//
//  ExportButtonView.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI
import SwiftData

public struct ExportButtonView: View {
    @Query(FetchDescriptor<Syllabus>(sortBy: [SortDescriptor(\Syllabus.name, order: .forward)])) private var listOfAllSyllabiInDatabase: [Syllabus]
    public var body: some View {
        NavigationView {
            Export(listOfAllSyllabiInDatabase: listOfAllSyllabiInDatabase)
        }
        
    }
}
