//
//  AddSyllabi.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI
import SwiftData

struct AddSyllabi: View {
    
    // Enable this view to be dismissed to go back to the previous view
    @Environment(\.dismiss) private var dismiss
    
    @Environment(\.modelContext) private var modelContext
    
    @State private var text = ""
    
    //--------------
    // Alert Message
    //--------------
    @State private var showAlertMessage = false
    
    var body: some View {
        
        Form {
            Section(header: Text("Copy and Paste Entire Syllabus Text"), footer: HStack { Button(action: { UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)}) {
                Image(systemName: "keyboard")
                    .font(Font.title.weight(.light))
                    .foregroundColor(.blue)
                }
                                       
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "multiply.circle")
                        .font(Font.title.weight(.light))
                        .foregroundColor(.blue)
                }
                                       
            }
            ) {
                TextEditor(text: $text)
                    .frame(height: 100)
                    .font(.custom("Helvetica", size: 14))
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.leading)
            }
        }   // End of Form
        .font(.system(size: 14))
        .navigationTitle("Add New Syllabus")
        .toolbarTitleDisplayMode(.inline)
        .toolbar {
            // Place the Save button on right side of the toolbar
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    if inputDataValidated() {
                        let currentQuestion = text // Save a local copy
                        saveNewSyllabus(syl: currentQuestion)
                        
                        
                        showAlertMessage = true
                        alertTitle = "New Syllabi Saved!"
                        alertMessage = "Your new syllabus has been uploaded!"
                    } else {
                        showAlertMessage = true
                        alertTitle = "Missing Input Data!"
                        alertMessage = "Ensure Text field are filled out before saving."
                    }
                }
            }
        }   // End of toolbar

        .alert(alertTitle, isPresented: $showAlertMessage, actions: {
            Button("OK") {
                if alertTitle == "New Syllabi Saved!" {
                    // Dismiss this view and go back to the previous view
                    dismiss()
                }
            }
        }, message: {
            Text(alertMessage)
        })
        
    }   // End of body var
    
    
    /*
     ---------------------------
     MARK: Input Data Validation
     ---------------------------
     */
    func inputDataValidated() -> Bool {
        
        if text.isEmpty {
            return false
        }
        
        return true
    }
    
    
    /*
     ****************************************
     MARK: Save New Syllabus
     ****************************************
     */
    func saveNewSyllabus(syl: String) {
        if let summa = summarizeSyllabusSync(syllabus: syl, apiKey: apiKey) {
            print("Summa: \(summa)\n\n")
            determineSyllabusListings(syllabus: summa, segments: segmentListing, apiKey: apiKey) { relevantIds in
                if let relevantIds = relevantIds {
                    print("Relevant segment IDs: \(relevantIds)\n\n")
                    matchSyllabusToCourse(
                        syllabus: summa,
                        relevantCategories: relevantIds,
                        segments: fullSegmentListing,
                        prevMatch: [],
                        apiKey: apiKey
                    ) { response in
                        DispatchQueue.main.async {
                            if let response = response {
                                print(response + "    lololo\n\n")
                                let res = response.components(separatedBy: "|")
                                for thing in res {
                                    print(thing + "\n\n")
                                }
                                if (res.count == 5) {
                                    let newEqu = Equivalent(name: res[2], sum: res[3], reason: res[4])
                                    //let newSyll = Syllabus(name: res[0], text: summa, sum: res[1], equivalent: newEqu)
                                    
                                    modelContext.insert(newEqu)
                                    //modelContext.insert(newSyll)
                                }
                                
                                //Add new syllabi and equivalent to database
                            } else {
                                print("Failed to get a response.")
                            }
                        }
                    }
                } else {
                    print("Failed to determine relevant segments.")
                }
            }
        } else {
            print("Failed to summarize syllabus.")
        }
        
        //let newSyll = Syllabus(name: name, text: text, sum: "Sample sum")
        
        // ❎ Insert it into the database context
        //modelContext.insert(newSyll)

    }   // End of function
}

