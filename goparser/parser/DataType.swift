//
//  DataType.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

//protocol DataType: VisitorType {}
protocol DataType {}
//extension VisitorType: DataType {}

typealias SpecModel = [TypeStruct]
extension SpecModel: VisitorType {}

typealias VisitorType = DataType

typealias InterfaceDataType = Literal
typealias TimeDataType = Literal
typealias Package = Literal

class Literal: DataType {
    var name: Expr
    
    init(name: Expr) {
        self.name = name
    }
}
 
