//
//  Pointer.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

class Pointer: DataType {
    var name: Expr
    var star: Expr
    var pointer: Expr
    
    init(name: Expr, star: Expr, pointer: Expr) {
        self.name = name
        self.star = star
        self.pointer = pointer
    }
}
