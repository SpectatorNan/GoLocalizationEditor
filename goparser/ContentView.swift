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
            var count = 0
            if let result = try GoModelParser.parser(text) {
                for model in result.models {
                    if let model = model as? TypeStruct {
                        print("type: \(model.name.text)")
                        for field in model.fields {
                            print("==>field: \(field.name.text)")
                            count += 1
                            if let tag = field.tag {
                                print("====>tag: \(tag.text)")
                            } else {
                                print("====>tag: nil")
                            }
                        }
                    } else {
                        print("not struct")
                    }
                }
            }
            print("count: \(count)")
//            let stream = ANTLRInputStream(text)
//            let lexer = GoLexer(stream)
//            let tokens = CommonTokenStream(lexer)
//            let parser = try GoParser(tokens)
//            
//            let visitor = GoParserVisitor<GoParserResult>()
//            let tree = try parser.sourceFile()
            
//            let tree = try parser.typeLit().accept(visitor)
            
//            let tree = try parser.sourceFile()
//            print(tree)
        } catch {
            print(error)
        }
    }
    
}

struct GoParserResult {

}
//turbo2pay@gmail.com
//Qaz123456.
//Jason1158998.
//admin2021168.
#Preview {
    ContentView()
}
//rSJyRGQd3y3V
//28836
