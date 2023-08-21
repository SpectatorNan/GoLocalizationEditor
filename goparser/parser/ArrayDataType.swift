//
//  ArrayDataType.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

class ArrayDataType: DataType {
    var arrayExpr: Expr
    var lBrack: Expr
    var rBrack: Expr
    var value: DataType
    
    init(arrayExpr: Expr, lBrack: Expr, rBrack: Expr, value: DataType) {
        self.arrayExpr = arrayExpr
        self.lBrack = lBrack
        self.rBrack = rBrack
        self.value = value
    }
}
