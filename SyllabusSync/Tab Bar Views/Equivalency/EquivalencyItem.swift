//
//  EquivalencyItem.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI

struct EquivalencyItem: View {
    // Input Parameter
    let syl: Syllabus

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Title: " + syl.equivalent.name)
                Text("Syllabus: " + syl.name)
                Text("Sum: " + syl.equivalent.sum.prefix(40))
            }
            // Set font and size for the whole VStack content
            .font(.system(size: 14))
        }
    }
}
