//
//  DatabaseCreation.swift
//  AdventurePlanner
//
//  Created by Darren Hsu, keming Liang and Osman Balci on 4/29/24.
//  Copyright © 2024 Darren Hsu, Keming Liang and Osman Balci. All rights reserved.
//

import SwiftUI
import SwiftData

public func createDatabase() {
    /*
    /*
     ------------------------------------------------
     |   Create Model Container and Model Context   |
     ------------------------------------------------
     */
    var modelContainer: ModelContainer
    
    do {
        // Create a database container to manage the Destination, DestPhoto, DestAudio, DestCovid and Note objects
        modelContainer = try ModelContainer(for: Syllabus.self, Equivalent.self)
    } catch {
        fatalError("Unable to create ModelContainer")
    }
    
    // Create the context (workspace) where database objects will be managed
    let modelContext = ModelContext(modelContainer)
    
    
    
    let equFetchDescriptor = FetchDescriptor<Equivalent>()
    
    var listOfAllEquInDatabase = [Equivalent]()
    
    do {
        // Obtain all of the Destination objects from the database
        listOfAllEquInDatabase = try modelContext.fetch(equFetchDescriptor)
    } catch {
        fatalError("Unable to fetch Equ objects from the database")
    }
    
    
    if !listOfAllEquInDatabase.isEmpty {
        //for thing in listOfAllEquInDatabase {
            //modelContext.delete(thing)
        //}
        print("Database has already been created!")
        
    }
    else {
        print("Equ Database will be created!")
        
        // Local variable equStructList is obtained from the JSON file to populate the database
        var equStructList = [EquivalentStruct]()
        
        // The function is given in UtilityFunctions.swift
        equStructList = decodeJsonFileIntoArrayOfStructs(fullFilename: "DatabaseInitialEquContent.json", fileLocation: "Main Bundle")
        
        /*
         =================================
         |   Dest Object Creation   |
         =================================
         */
        /*
        for aEquStruct in equStructList {
            let newEqu = Equivalent(name: aEquStruct.name, newName: aEquStruct.newName, sum: aEquStruct.sum, reason: aEquStruct.reason)
            // ❎ Insert it into the database context
            modelContext.insert(newEqu)

        }   // End of loop
         */
        let newEqu = Equivalent(name: equStructList[0].name, sum: equStructList[0].sum, reason: equStructList[0].reason)
        // ❎ Insert it into the database context
        modelContext.insert(newEqu)
        
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
            //for thing in listOfAllSyllabiInDatabase {
                //modelContext.delete(thing)
            //}
            print("Database has already been created!")
            
        }
        else {
            print("Syllabi Database will be created!")
            
            /*
             ----------------------------------------------------------
             | *** The app is being launched for the first time ***   |
             |   Database needs to be created and populated with      |
             |   the initial content in DatabaseInitialContent.json   |
             ----------------------------------------------------------
             */
            
            // Local variable syllStructList is obtained from the JSON file to populate the database
            var syllStructList = [SyllabusStruct]()
            
            // The function is given in UtilityFunctions.swift
            syllStructList = decodeJsonFileIntoArrayOfStructs(fullFilename: "DatabaseInitialContent.json", fileLocation: "Main Bundle")
            
            /*
             =================================
             |   Dest Object Creation   |
             =================================
             */
            
            for aSyllStruct in syllStructList {
                let newSyll = Syllabus(name: aSyllStruct.name, text: aSyllStruct.text, sum: aSyllStruct.sum, equivalent: newEqu)
                
                // ❎ Insert it into the database context
                modelContext.insert(newSyll)

            }   // End of loop
        }
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
     */
}


