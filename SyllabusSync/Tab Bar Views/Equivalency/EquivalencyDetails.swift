//
//  EquivalencyDetails.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI

struct EquivalencyDetails: View {
    // Input Parameter
    let syl: Syllabus

    var body: some View {
        Form {
            Section(header: Text("Course Title")) {
                Text(syl.equivalent.name)
            }
            Section(header: Text("Course Summary")) {
                Text(syl.equivalent.sum)
            }
            Section(header: Text("Matched Syllabus")) {
                Text(syl.name)
            }
            Section(header: Text("Syllabus Summary")) {
                Text(syl.sum)
            }
            Section(header: Text("Reasoning")) {
                Text(syl.equivalent.reason)
            }
             
        }   // End of Form
            .font(.system(size: 14))
            .navigationTitle("Equivalent Course Details")
            .toolbarTitleDisplayMode(.inline)
            
    }   // End of body var

    
}
