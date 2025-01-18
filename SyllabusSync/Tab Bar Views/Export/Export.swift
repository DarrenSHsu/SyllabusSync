//
//  Export.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI
import PDFKit
import SwiftData

struct Export: View {
    let listOfAllSyllabiInDatabase: [Syllabus]
    
    
    var body: some View {
        VStack {
            Section() {
                Spacer()
                Button("Save PDF") {
                    saveTripPDF()
                }
                Spacer()
            }
            PDFKitView(pdfData: PDFDocument(data: createTripPDF())!)
        }
        
    }
    
    // Creates a PDF document populated with Trip details
    @MainActor
    func createTripPDF() -> Data {
        
        // Sets the PDF dimensions
        let pdfRender = UIGraphicsPDFRenderer(bounds: CGRect(x: 0, y:0, width: 595, height: 842))
        
        // Determines the data in the PDF Document
        let data = pdfRender.pdfData { context in
            
            // Create a new page in the PDF document
            
            
            // Set attribute Formats
            let titleAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
            let subAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)]
            let normalAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12)]
            var yval = 80
            var lineCount = 0
            for i in 0..<listOfAllSyllabiInDatabase.count {
                print("\(i)")
                context.beginPage()
                yval = 80
                let title = "\(listOfAllSyllabiInDatabase[i].name)"
                title.draw(at: CGPoint(x:20, y:50), withAttributes: titleAttributes)

                let summary = formatParagraph(longString: listOfAllSyllabiInDatabase[i].sum)
                lineCount = summary.components(separatedBy: "\n").count
                if yval + 30 + lineCount * 18 > 760 {
                    context.beginPage()
                    yval = 50
                }
                "Syllabi Summary: ".draw(at: CGPoint(x: 20, y: yval), withAttributes: subAttributes)
                "\(summary)".draw(at: CGPoint(x: 20, y: yval + 20), withAttributes: normalAttributes)
                yval = yval+30 + lineCount * 18
                
                let course = formatParagraph(longString: listOfAllSyllabiInDatabase[i].equivalent.name)
                lineCount = course.components(separatedBy: "\n").count
                if yval + 30 + lineCount * 18 > 760 {
                    context.beginPage()
                    yval = 50
                }
                "Equivalent Course: ".draw(at: CGPoint(x: 20, y: yval), withAttributes: subAttributes)
                "\(course)".draw(at: CGPoint(x: 20, y: yval + 20), withAttributes: normalAttributes)
                yval = yval+30 + lineCount * 18
                
                let courseSummary = formatParagraph(longString: listOfAllSyllabiInDatabase[i].equivalent.sum)
                lineCount = courseSummary.components(separatedBy: "\n").count
                if yval + 30 + lineCount * 18 > 760 {
                    context.beginPage()
                    yval = 50
                }
                "Equivalent Course Summary: ".draw(at: CGPoint(x: 20, y: yval), withAttributes: subAttributes)
                "\(courseSummary)".draw(at: CGPoint(x: 20, y: yval + 20), withAttributes: normalAttributes)
                yval = yval + 30 + lineCount * 18
                
                let reason = formatParagraph(longString: listOfAllSyllabiInDatabase[i].equivalent.reason)
                lineCount = reason.components(separatedBy: "\n").count
                if yval + 30 + lineCount * 18 > 760 {
                    context.beginPage()
                    yval = 50
                }
                "Reasoning: ".draw(at: CGPoint(x: 20, y: yval), withAttributes: subAttributes)
                "\(reason)".draw(at: CGPoint(x: 20, y: yval + 20), withAttributes: normalAttributes)
                yval = yval + 50 + lineCount * 18
            }
        }
        return data
    }
    
    // Function that allows a user to save the created PDF file to their document directory.
    @MainActor func saveTripPDF() {
        let fileName = "FullEquivalencySummary.pdf"
        let pdfData = createTripPDF()

        // Attempts to save the PDF document
        if let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let documentURL = documentDirectory.appendingPathComponent(fileName)
            do {
                try pdfData.write(to: documentURL)
                print("PDF saved at: \(documentURL).")
            } catch {
                print("Could not save PDF to \(documentURL).")
            }
        }
    }
    
    // Allows the PDF document to be viewed in a seperate page (view)
    struct PDFKitView: UIViewRepresentable {
        let PDFDocument: PDFDocument
        
        // Initializes the PDFKitView
        init(pdfData PDFDoc: PDFDocument) {
            self.PDFDocument = PDFDoc
        }
        
        // Creates a new pdfView for the context (context is the details to be added to the document)
        func makeUIView(context: Context) -> PDFView {
            let PDFView = PDFView()
            PDFView.autoScales = true
            PDFView.document = PDFDocument
            return PDFView
        }
        
        // Updates the view
        func updateUIView(_ PDFView: PDFView, context: Context) {
            PDFView.document = PDFDocument
        }
    }
     func formatParagraph(longString: String, maxLineLength: Int = 95) -> String {
        var currentLine = ""
        var formattedParagraph = ""
        for word in longString.split(separator: " ") {
            if currentLine.count + word.count + 1 <= maxLineLength {
                currentLine += word + " "
            } else {
                formattedParagraph += currentLine.trimmingCharacters(in: .whitespacesAndNewlines) + "\n"
                currentLine = word + " "
            }
        }

        formattedParagraph += currentLine.trimmingCharacters(in: .whitespacesAndNewlines)

        return formattedParagraph
    }
}

