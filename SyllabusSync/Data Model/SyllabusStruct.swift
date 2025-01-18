//
//  SyllabusStruct.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import Foundation

struct SyllabusStruct: Hashable, Decodable, Encodable {
    var name: String
    var text: String
    var sum: String
}
