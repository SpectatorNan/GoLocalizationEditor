//
//  Expr.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

protocol Expr {
    var line: Int { get }
    var column: Int { get }
    var text: String { get set }
    var start: Int { get }
    var stop: Int { get }
    func equal(_ expr: Expr) -> Bool
}

struct DefaultExpr: Expr {
    var line: Int
    var column: Int
    var text: String
    var start: Int
    var stop: Int
    func equal(_ expr: Expr) -> Bool {
        return text == expr.text
    }
}
