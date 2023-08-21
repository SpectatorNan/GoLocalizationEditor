//
//  TypeField.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

struct TypeField: VisitorType {
    var name: Expr
    var dataType: DataType
    var tag: Expr?
    var docs: [Expr]
//    var comment: Expr
}
