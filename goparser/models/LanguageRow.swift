//
//  LanguageRow.swift
//  goparser
//
//  Created by spec on 2023/9/6.
//

import SwiftUI


class LanguageRow {
    var name: String
    var values: [LocaleLanguage: String]
    
    init(name: String, values: [LocaleLanguage : String]) {
        self.name = name
        self.values = values
    }
}
extension LanguageRow: Identifiable {
    var id: String {
        name
    }
    
     func binding(for key: LocaleLanguage) -> Binding<String> {
        return Binding<String>(
            get: {
                self.values[key] ?? ""
            },
            set: {
                self.values[key] = $0
            }
        )
    }
}
extension LanguageRow: CustomStringConvertible {
    var description: String {
        var str = ""
        str += "name: \(name)\n"
        str += "values: \n"
        for (k, v) in values {
            str += "\t\(k): \(v)\n"
        }
        return str
    }
}
