//
//  Log.swift
//  goparser
//
//  Created by spec on 2023/9/13.
//

import Foundation

public func SNLog<T>(_ message: T, file: String = #file, function: String = #function, line: Int = #line) {
    #if DEBUG
    var fileName = file as NSString

    fileName = fileName.lastPathComponent as NSString
    print("{\n\(Date().timeIntervalSince1970)\n\(fileName)--\(function)--\(line) :\n\(message)\n}")
    #endif
}
