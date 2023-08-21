//
//  GoParserBase.swift
//  goparser
//
//  Created by spec on 2023/8/7.
//

import Antlr4

open class GoParserBase: Parser {}

//extension GoParser {
//    
//    func closingBracket() -> Bool {
//        do {
//            let stream = getTokenStream()
//            guard let la = try stream?.LA(1) else { return false }
//             
//            return la == GoParser.Tokens.R_CURLY.rawValue || la == GoParser.Tokens.R_PAREN.rawValue
//        } catch {
//            print(error)
//        }
//        return false
//    }
//}
