//
//  SyllabusSyncApp.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI
import SwiftData

@main
struct SyllabusSyncApp: App {
    init() {
        // Create the Database upon App Launch IF the app is being launched for the first time.
        killDatabase()                    // In DatabaseCreation.swift
        
    }
    
    @AppStorage("darkMode") private var darkMode = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                // Change the color mode of the entire app to Dark or Light
                .preferredColorScheme(darkMode ? .dark : .light)
            
                // Database container will manage the Photo and Video objects
                .modelContainer(for: [Syllabus.self, Equivalent.self, PDFDocumentMine.self], isUndoEnabled: true)
        }
    }
}
