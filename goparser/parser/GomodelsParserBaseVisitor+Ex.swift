//
//  GomodelsParserBaseVisitor+Ex.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

extension GomodelsParserBaseVisitor {
    func matchTag(_ str: String) -> Bool {
        let pattern = /`[a-z]+:".+"`/
        return str.contains(pattern)
    }
}
