//
//  MapDataType.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

class MapDataType: DataType {
    var mapExpr: Expr
    var map: Expr
    var lBrack: Expr
    var rBrack: Expr
    var key: Expr
    var value: DataType
    
    init(mapExpr: Expr, map: Expr, lBrack: Expr, rBrack: Expr, key: Expr, value: DataType) {
        self.mapExpr = mapExpr
        self.map = map
        self.lBrack = lBrack
        self.rBrack = rBrack
        self.key = key
        self.value = value
    }
}
