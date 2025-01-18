//
//  DatabaseClasses.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI
import SwiftData

@Model
final class Syllabus {
    var name: String
    var text: String
    var sum: String
    @Relationship(deleteRule: .cascade) var equivalent: Equivalent
    @Relationship(deleteRule: .cascade) var pdf: PDFDocumentMine
    
    init(name: String, text: String, sum: String, equivalent: Equivalent, pdf: PDFDocumentMine) {
        self.name = name
        self.text = text
        self.sum = sum
        self.equivalent = equivalent
        self.pdf = pdf
    }
}

@Model
final class Equivalent {
    var name: String
    var sum: String
    var reason: String
    
    init(name: String, sum: String, reason: String) {
        self.name = name
        self.sum = sum
        self.reason = reason
    }
}

@Model
final class PDFDocumentMine {
    var id: UUID
    var fileName: String
    var fileData: Data
    
    init(fileName: String, fileData: Data) {
        self.id = UUID()
        self.fileName = fileName
        self.fileData = fileData
    }
}
