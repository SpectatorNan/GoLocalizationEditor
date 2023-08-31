//
//  ModelResult.swift
//  goparser
//
//  Created by spec on 2023/8/21.
//

import Foundation

struct ModelResult: VisitorType {
    var models: [VisitorType]
    var modelKeys: [String: Bool]
    
    lazy var fieldNameSet: Set<String> = {
        var set = Set<String>()
        for model in models {
            if let model = model as? TypeStruct {
//                set.insert(model.name.text)
                for field in model.fields {
                    set.insert(field.name.text)
                }
            }
        }
        return set
    }()
    
//    lazy var fieldNames: [String] = {
//        return fieldNameSet.sorted(by: <)
//    }()
}

extension [ModelResult] {
    
    var fieldNames: [String] {
        var set: Set<String> = []
        for var model in self {
            set.formUnion(model.fieldNameSet)
        }
        return set.sorted(by: <)
    }
}
