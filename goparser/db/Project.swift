//
//  Project.swift
//  goparser
//
//  Created by spectator on 2024/8/17.
//

import Foundation
import SwiftData

@Model
final class Project {
    
    var name: String
    var typeFiles: [String]
    var errFiles: [String]
    
    init(name: String, typeFiles: [String], errFiles: [String]) {
        self.name = name
        self.typeFiles = typeFiles
        self.errFiles = errFiles
    }
}
