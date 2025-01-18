//
//  DatabaseCreation.swift
//  AdventurePlanner
//
//  Created by Darren Hsu, keming Liang and Osman Balci on 4/29/24.
//  Copyright © 2024 Darren Hsu, Keming Liang and Osman Balci. All rights reserved.
//

import SwiftUI
import SwiftData

public func killDatabase() {
    
    /*
     ------------------------------------------------
     |   Create Model Container and Model Context   |
     ------------------------------------------------
     */
    var modelContainer: ModelContainer
    
    do {
        // Create a database container to manage the Destination, DestPhoto, DestAudio, DestCovid and Note objects
        modelContainer = try ModelContainer(for: Syllabus.self, Equivalent.self, PDFDocumentMine.self)
    } catch {
        fatalError("Unable to create ModelContainer")
    }
    
    // Create the context (workspace) where database objects will be managed
    let modelContext = ModelContext(modelContainer)
    
    /*
     --------------------------------------------------------------------
     |   Check to see if the database has already been created or not   |
     --------------------------------------------------------------------
     */
    let syllabusFetchDescriptor = FetchDescriptor<Syllabus>()
    
    var listOfAllSyllabiInDatabase = [Syllabus]()
    
    do {
        // Obtain all of the Destination objects from the database
        listOfAllSyllabiInDatabase = try modelContext.fetch(syllabusFetchDescriptor)
    } catch {
        fatalError("Unable to fetch Syllabus objects from the database")
    }
    
    if !listOfAllSyllabiInDatabase.isEmpty {
        for thing in listOfAllSyllabiInDatabase {
            modelContext.delete(thing)
        }
        print("Database has already been created! syl")
        
    }
    
    let equFetchDescriptor = FetchDescriptor<Equivalent>()
    
    var listOfAllEquInDatabase = [Equivalent]()
    
    do {
        // Obtain all of the Destination objects from the database
        listOfAllEquInDatabase = try modelContext.fetch(equFetchDescriptor)
    } catch {
        fatalError("Unable to fetch Equ objects from the database")
    }
    
    
    if !listOfAllEquInDatabase.isEmpty {
        for thing in listOfAllEquInDatabase {
            modelContext.delete(thing)
        }
        print("Database has already been created! equ")
        
    }

    let pdfFetchDescriptor = FetchDescriptor<PDFDocumentMine>()
    
    var listOfAllPdfInDatabase = [PDFDocumentMine]()
    
    do {
        // Obtain all of the Destination objects from the database
        listOfAllPdfInDatabase = try modelContext.fetch(pdfFetchDescriptor)
    } catch {
        fatalError("Unable to fetch pdf objects from the database")
    }
    
    
    if !listOfAllPdfInDatabase.isEmpty {
        for thing in listOfAllEquInDatabase {
            modelContext.delete(thing)
        }
        print("Database has already been created! pdf")
        
    }

    
    /*
     =================================
     |   Save All Database Changes   |
     =================================
     🔴 NOTE: Database changes are automatically saved and SwiftUI Views are
     automatically refreshed upon State change in the UI or after a certain time period.
     But sometimes, you can manually save the database changes just to be sure.
     */
    do {
        try modelContext.save()
    } catch {
        fatalError("Unable to save database changes")
    }
    
    print("Database is successfully created!")
}


