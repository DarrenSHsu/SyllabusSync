//
//  SyllabusList.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI
import SwiftData
import UIKit
import PDFKit
import Vision

struct SyllabusList: View {
    @Environment(\.modelContext) private var modelContext
    @Query(FetchDescriptor<Syllabus>(sortBy: [SortDescriptor(\Syllabus.name, order: .forward)])) private var listOfAllSyllabiInDatabase: [Syllabus]
    
    @State private var toBeDeleted: IndexSet?
    @State private var showConfirmation = false
    @State private var showAlertMessage = false
    
    @State private var selectedPDF: URL? = nil
    @State private var isDocumentPickerPresented = false
    @State private var extractedText: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(listOfAllSyllabiInDatabase) { aSyll in
                    NavigationLink(destination: SyllabiDetails(syll: aSyll)) {
                        SyllabiItem(syll: aSyll)
                            .alert(isPresented: $showConfirmation) {
                                Alert(title: Text("Delete Confirmation"),
                                      message: Text("Are you sure to permanently delete the entry? It cannot be undone."),
                                      primaryButton: .destructive(Text("Delete")) {
                                    /*
                                     'toBeDeleted (IndexSet).first' is an unsafe pointer to the index number of the array
                                     element to be deleted. It is nil if the array is empty. Process it as an optional.
                                     */
                                    if let index = toBeDeleted?.first {
                                        let destToDelete = listOfAllSyllabiInDatabase[index]
                                        print(destToDelete.name)
                                        // ❎ Delete selected Trip object from the database
                                        modelContext.delete(destToDelete)
                                    }
                                    toBeDeleted = nil
                                }, secondaryButton: .cancel() {
                                    toBeDeleted = nil
                                }
                                )
                            }   // End of alert
                    }
                }
                .onDelete(perform: delete)
                
            }   // End of List
            .font(.system(size: 14))
            .navigationTitle("List of Syllabi")
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                // Place the Edit button on the left side of the toolbar
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Upload PDF") {
                        isDocumentPickerPresented.toggle()
                    }
                }
            }
            .sheet(isPresented: $isDocumentPickerPresented) {
                DocumentPicker(didPickDocument: { url in
                    selectedPDF = url
                    extractTextFromPDF(url) { extractedText in
                        // Use the extracted text and save the PDF
                        print("Extracted Text: \(extractedText)")
                        savePDFToDatabase(url)
                    }
                }, didCancel: {
                    print("Document picker was cancelled")
                })
            }
            .alert(alertTitle, isPresented: $showAlertMessage, actions: {
                Button("OK") {}
            }, message: {
                Text(alertMessage)
            })
            
        }   // End of NavigationStack
    }   // End of body var
    
    /*
     --------------------------------
     MARK: Delete Selected Trip
     --------------------------------
     */
    func delete(at offsets: IndexSet) {
        
        toBeDeleted = offsets
        showConfirmation = true
    }
    
    private func savePDFToDatabase(_ url: URL) {
        guard url.startAccessingSecurityScopedResource() else {
            print("Failed to access security-scoped resource.")
            return
        }
        defer { url.stopAccessingSecurityScopedResource() } // Always stop access
        
        do {
            // Copy the file to the app's Documents directory
            let fileManager = FileManager.default
            let documentsDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
            let destinationURL = documentsDirectory.appendingPathComponent(url.lastPathComponent)
            
            // Remove the file if it already exists
            if fileManager.fileExists(atPath: destinationURL.path) {
                try fileManager.removeItem(at: destinationURL)
            }
            
            // Copy the file
            try fileManager.copyItem(at: url, to: destinationURL)
            
            // Read the copied file's data
            let fileData = try Data(contentsOf: destinationURL)
            
            // Extract text from PDF
            extractTextFromPDF(url) { text in
                extractedText = text
            }
            
            // Create a new PDFDocument
            let newPDF = PDFDocumentMine(fileName: url.lastPathComponent, fileData: fileData)
            print("Extracted text: \(extractedText)")
            saveNewSyllabus(syl: extractedText, pdf: newPDF)
            
            modelContext.insert(newPDF)
            try modelContext.save()
            print("PDF saved successfully")
        } catch {
            print("Error saving PDF: \(error)")
        }
    }
    
    private func extractTextFromPDF(_ url: URL, completion: @escaping (String) -> Void) {
        guard let pdfDocument = PDFDocument(url: url) else {
            print("Failed to load PDF document.")
            completion("")
            return
        }
        
        var extractedText = ""
        
        // Extract text using PDFKit
        for pageIndex in 0..<pdfDocument.pageCount {
            if let page = pdfDocument.page(at: pageIndex) {
                let pageText = page.string ?? ""
                extractedText += pageText + "\n"
            }
        }
        
        if extractedText.isEmpty {
            print("No text found using PDFKit. Attempting OCR...")
            let images = extractImagesFromPDF(pdfDocument)
            let dispatchGroup = DispatchGroup()
            
            for image in images {
                dispatchGroup.enter()
                performOCR(on: image) { recognizedText in
                    extractedText += recognizedText + "\n"
                    dispatchGroup.leave()
                }
            }
            
            dispatchGroup.notify(queue: .main) {
                completion(extractedText)
            }
        } else {
            print("Extracted Text:\n\(extractedText)")
            completion(extractedText)
        }
    }
    
    private func extractImagesFromPDF(_ pdfDocument: PDFDocument) -> [UIImage] {
        var images: [UIImage] = []
        
        for pageIndex in 0..<pdfDocument.pageCount {
            if let page = pdfDocument.page(at: pageIndex),
               let pageRef = page.pageRef {
                if let pdfPageImage = UIImage(pdfPage: pageRef) {
                    images.append(pdfPageImage)
                }
            }
        }
        
        return images
    }
    
    func performOCR(on image: UIImage, completion: @escaping (String) -> Void) {
        guard let cgImage = image.cgImage else {
            print("Failed to convert UIImage to CGImage")
            completion("")
            return
        }
        
        // Create a text recognition request
        let request = VNRecognizeTextRequest { (request, error) in
            if let error = error {
                print("Error during OCR: \(error.localizedDescription)")
                completion("")
                return
            }
            
            // Process recognized text
            let recognizedText = request.results?
                .compactMap { $0 as? VNRecognizedTextObservation }
                .compactMap { $0.topCandidates(1).first?.string }
                .joined(separator: "\n") ?? ""
            
            completion(recognizedText)
        }
        
        // Configure the request
        request.recognitionLevel = .accurate
        request.usesLanguageCorrection = true
        
        // Create an image request handler
        let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        
        // Perform the request asynchronously
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                try handler.perform([request])
            } catch {
                print("Failed to perform OCR: \(error.localizedDescription)")
                completion("")
            }
        }
    }
    /*
     ****************************************
     MARK: Save New Syllabus
     ****************************************
     */
    func saveNewSyllabus(syl: String, pdf: PDFDocumentMine) {
        print("Syl: \(syl)\n\n")
        if let summa = summarizeSyllabusSync(syllabus: syl, apiKey: apiKey) {
            print("Summa: \(summa)\n\n")
            
            var ics = ""
            var stat = ""
            var gdim = ""
            var cs = ""
            var inf = ""
            matchSyllabusToCourse(syllabusSummary: summa, courseListings: icsListingFull, apiKey: apiKey) { response in
                if let response = response {
                    ics = response
                }
            }
            
            matchSyllabusToCourse(syllabusSummary: summa, courseListings: statListingFull, apiKey: apiKey) { response in
                if let response = response {
                    stat = response
                }
            }
            
            matchSyllabusToCourse(syllabusSummary: summa, courseListings: gdimListingFull, apiKey: apiKey) { response in
                if let response = response {
                    gdim = response
                }
            }
            
            matchSyllabusToCourse(syllabusSummary: summa, courseListings: csListingFull, apiKey: apiKey) { response in
                if let response = response {
                    cs = response
                }
            }
            
            matchSyllabusToCourse(syllabusSummary: summa, courseListings: infListingFull, apiKey: apiKey) { response in
                if let response = response {
                    inf = response
                }
            }
            print("ics: \(ics)")
            print("stat: \(stat)")
            print("gdim: \(gdim)")
            print("cs: \(cs)")
            print("inf: \(inf)")
            let relevantIds: [String] = [ics, stat, gdim, cs, inf]
            var matched = [String]()
            for match in listOfAllSyllabiInDatabase {
                matched.append(
                    """
Course Title: 
\(match.equivalent.name)

Course Summary: 
\(match.equivalent.sum)
"""
                )
            }
            
            matchSyllabusToCourse(
                syllabus: summa,
                relevantCategories: relevantIds,
                segments: fullSegmentListing,
                prevMatch: matched,
                apiKey: apiKey
            ) { response in
                DispatchQueue.main.async {
                    if let response = response {
                        print(response + "    lololo\n\n")
                        let res = response.components(separatedBy: "|")
                        for thing in res {
                            print(thing + "  this sec \n\n")
                        }
                        if (res.count == 5) {
                            let newEqu = Equivalent(name: res[2], sum: res[3], reason: res[4])
                            let newSyll = Syllabus(name: res[0], text: summa, sum: res[1], equivalent: newEqu, pdf: pdf)
                            
                            modelContext.insert(newEqu)
                            modelContext.insert(newSyll)
                            print("lol it didnt failed man")
                        }
                        print("lol it failed man")
                        //Add new syllabi and equivalent to database
                    } else {
                        print("Failed to get a response.")
                    }
                }
            }
            /*
             determineSyllabusListings(syllabus: summa, segments: segmentListing, apiKey: apiKey) { relevantIds in
             if let relevantIds = relevantIds {
             print("Relevant segment IDs: \(relevantIds)\n\n")
             
             }
             else {
             print("Failed to determine relevant segments.")
             }*/
        }
    }
    
}

extension UIImage {
    convenience init?(pdfPage: CGPDFPage) {
        // Get the page dimensions
        let pageRect = pdfPage.getBoxRect(.mediaBox)
        
        // Create a UIGraphicsImageRenderer to render the PDF page
        let renderer = UIGraphicsImageRenderer(size: pageRect.size)
        let image = renderer.image { context in
            UIColor.white.set() // Set background color to white
            context.fill(pageRect) // Fill the background
            context.cgContext.translateBy(x: 0, y: pageRect.height) // Flip the Y-axis
            context.cgContext.scaleBy(x: 1.0, y: -1.0) // Flip the context vertically
            context.cgContext.drawPDFPage(pdfPage) // Draw the PDF page
        }
        
        // Initialize UIImage with the rendered CGImage
        self.init(cgImage: image.cgImage!)
    }
}
