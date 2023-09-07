//
//  Panel+Ex.swift
//  goparser
//
//  Created by spec on 2023/8/26.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers
//import AppKit

class Pannel {
    
    static func openFiles(createDirectories: Bool = false, multipleSelection: Bool = false, allowFileTypes: [String]) -> [URL]? {
        return open(chooseFiles: true, chooseDirectories: false, createDirectories: createDirectories, multipleSelection: multipleSelection, allowFileTypes: allowFileTypes)
    }
    
    static func selectFloder(createDirectories: Bool = false) -> [URL]? {
        return open(chooseFiles: false, chooseDirectories: true, createDirectories: createDirectories, multipleSelection: false, allowFileTypes: [])
    }
    
    static func open(chooseFiles: Bool, chooseDirectories: Bool, createDirectories: Bool, multipleSelection: Bool, allowFileTypes: [String]) -> [URL]? {
        let panel = NSOpenPanel()
        panel.canChooseFiles = chooseFiles
        panel.canChooseDirectories = chooseDirectories
        panel.allowsMultipleSelection = multipleSelection
        panel.canCreateDirectories = createDirectories
        if allowFileTypes.count > 0 {
            panel.allowedFileTypes = allowFileTypes
        }
//        panel.allowedContentTypes = [UTType(tag: "go", tagClass: UTTagClass.filenameExtension, conformingTo: nil)!]
        let result = panel.runModal()
        if result == .OK {
            return panel.urls
        }
        return nil
    }
     
    
}
