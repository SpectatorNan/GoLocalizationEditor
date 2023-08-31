//
//  GolangLocaleUtils.swift
//  goparser
//
//  Created by spec on 2023/8/29.
//

import Foundation

class GolangLocaleUtils {
    static func getFilename(by language: LocaleLanguage) -> String {
        switch language {
        case .zh_hans:
            return "active.zh.toml"
        case .en_US:
            return "active.en.toml"
        }
    }
}
