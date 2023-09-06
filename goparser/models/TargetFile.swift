//
//  TargetFile.swift
//  goparser
//
//  Created by spec on 2023/9/6.
//

import Foundation

struct TargetFile {
    let url: URL
    
    static func == (lhs: TargetFile, rhs: TargetFile) -> Bool {
        return lhs.url == rhs.url
    }
}
