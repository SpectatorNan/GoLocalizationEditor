//
//  Token+Ex.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation
import Antlr4

extension Token {
    var expr: DefaultExpr {
        DefaultExpr(
            line: getLine(),
            column: getCharPositionInLine(),
            text: getText() ?? "",
            start: getStartIndex(),
            stop: getStopIndex())
             
    }
    
    var column: Int {
        getCharPositionInLine()
    }
}
