//
//  ContentView.swift
//  goparser
//
//  Created by spec on 2023/8/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button {
                LParser().parse()
    
            } label: {
                Text("scan")
            }
        }
        .padding()
    }
}

import FileKit
import Antlr4

struct LParser {
    
    
 let filename = "/Users/spec/Documents/GitHub/fans/services/admin/api/internal/types/types.go"
    
    func parse() {
        let textFile = File<String>(path: Path(filename))
        do {
            let text = try textFile.read()
            print(text)
            
            let stream = ANTLRInputStream(text)
            let lexer = GoLexer(stream)
            let tokens = CommonTokenStream(lexer)
            let parser = try GoParser(tokens)
            let tree = try parser.typeLit()
            
//            let tree = try parser.sourceFile()
            print(tree)
        } catch {
            print(error)
        }
    }
    
}

class ApiParser: Parser {
    
}

class ApiVisitor<T>: ParseTreeVisitor<T> {
    var debug: Bool = false
    var prefix: String = ""
    var infoFlag = false
}
 


#Preview {
    ContentView()
}
