//
//  EquivalencyList.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI
import SwiftData

struct EquivalencyList: View {
    @Environment(\.modelContext) private var modelContext
    @Query(FetchDescriptor<Syllabus>(sortBy: [SortDescriptor(\Syllabus.name, order: .forward)])) private var listOfAllSyllabiInDatabase: [Syllabus]
    
    @State private var toBeDeleted: IndexSet?
    @State private var showConfirmation = false
    @State private var showAlertMessage = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(listOfAllSyllabiInDatabase) { aSyl in
                    NavigationLink(destination: EquivalencyDetails(syl: aSyl)) {
                        EquivalencyItem(syl: aSyl)
                            .alert(isPresented: $showConfirmation) {
                                Alert(title: Text("Delete Confirmation"),
                                      message: Text("Are you sure to permanently delete the syllabus? It cannot be undone."),
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
            .navigationTitle("List of Equivalent Courses")
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                // Place the Edit button on left side of the toolbar
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showAlertMessage = true
                        alertTitle = "AI Powered Sort"
                        alertMessage = "Uses AI to look for the best match to your syllabi for your major automatically when you add a new Syllabus."
                    }) {
                        Image(systemName: "info.circle")
                            .imageScale(.small)
                            .font(Font.title.weight(.light))
                    }
                }
            }   // End of toolbar
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
    
}
