//
//  SyllabiDetails.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//


import SwiftUI

struct SyllabiDetails: View {
    // Input Parameter
    let syll: Syllabus

    var body: some View {
        Form {
            Section(header: Text("Syllabus Course Title")) {
                Text(syll.name)
            }
            Section(header: Text("Syllabus Course Description Summary")) {
                Text(syll.sum)
            }
    
             
        }   // End of Form
            .font(.system(size: 14))
            .navigationTitle("Syllabus Details")
            .toolbarTitleDisplayMode(.inline)
            
    }   // End of body var

    
}

