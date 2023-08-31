//
//  LocaleLanguage.swift
//  goparser
//
//  Created by spec on 2023/8/29.
//

import Foundation

enum LocaleLanguage: CaseIterable {
    case zh_hans
    case en_US
}

extension LocaleLanguage {
    var showName: String {
        switch self {
        case .zh_hans:
            return "中文"
        case .en_US:
            return "英文"
        }
    }
}

extension LocaleLanguage: Identifiable {
    var id: String {
        switch self {
        case .zh_hans:
            return "zh_hans"
        case .en_US:
            return "en_US"
        }
    }
}
