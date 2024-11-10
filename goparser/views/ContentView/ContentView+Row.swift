//
//  ContentView+Row.swift
//  goparser
//
//  Created by spec on 2023/9/17.
//

import SwiftUI

extension ContentView1 {
    
    
    @ViewBuilder
    func tableRow(_ value: LanguageRow) -> some View {
        Text(value.name)
        ForEach(supportLanguage) { lang in
             let txt = value.binding(for: lang)
            TextField("", text: txt).id(value.name+lang.id)
        }
    }
    
    @ViewBuilder
    func tableRow(_ dic: [String: [LocaleLanguage: String]].Element) -> some View {
        Text(dic.key)
        ForEach(supportLanguage) { lang in
//             let txt = value.binding(for: lang)
            let txt = bindingSource(for: dic.key, lang)//$rootSources[dic.key][lang]
            TextField(lang.placeholder, text: txt).id(dic.key+lang.id)
        }
    }
    
    func bindingSource(for key: String, _ lang: LocaleLanguage) -> Binding<String> {
        return Binding<String>(
            get: {
                rootSources[key]?[lang] ?? ""
            },
            set: {
                if var dic = rootSources[key] {
                    dic[lang] = $0
                    rootSources[key] = dic
                } else {
                    rootSources[key] = [lang: $0]
                }
                
            }
        )
    }
    
}
