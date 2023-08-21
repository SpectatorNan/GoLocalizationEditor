//
//  TypeStruct.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

struct TypeStruct: VisitorType {
    var name: Expr
    var docs: [Expr]
    var fields: [TypeField]
}
