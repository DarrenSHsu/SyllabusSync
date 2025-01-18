//
//  SyllabiItem.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI

struct SyllabiItem: View {
    // Input Parameter
    let syll: Syllabus

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Syllabus: " + syll.name)
                Text("Summary: " + syll.sum.prefix(35))
            }
            // Set font and size for the whole VStack content
            .font(.system(size: 14))
        }
    }
}
