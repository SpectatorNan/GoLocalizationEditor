//
//  parser.swift
//  goparser
//
//  Created by spec on 2023/8/16.
//

import Foundation
import Antlr4
//import GoModelsParser

class GoModelParser {
    
    static func parser(_ content: String) throws -> ModelResult? {
        let stream = ANTLRInputStream(content)
        let lexer = GomodelsLexer(stream)
        let tokens = CommonTokenStream(lexer)
        let parser = try GomodelsParser(tokens)
        
        parser.removeErrorListeners()
        
        let modesl = try parser.models()
        
        let visitor = Visitor()
        
        if let result = modesl.accept(visitor) as? ModelResult {
            return result
        }
        return nil 
    }
    
//    static func parser(_ content: String) throws {
//        let stream = ANTLRInputStream(content)
//        
//    }
}
