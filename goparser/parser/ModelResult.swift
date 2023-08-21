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
}
