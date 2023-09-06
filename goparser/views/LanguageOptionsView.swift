//
//  LanguageOptionsView.swift
//  goparser
//
//  Created by spec on 2023/9/6.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    struct Option {
        var lang: LocaleLanguage
        var check: Bool
    }
    
    @State var options: [Option]
    @Binding var show: Bool
    @Binding var supportLang: [LocaleLanguage]
    
    init(langs: Binding<[LocaleLanguage]>, show: Binding<Bool>) {
        let opts = LocaleLanguage.allCases.map { lang in
            Option(lang: lang, check: langs.wrappedValue.contains(lang))
        }
        self.options = opts
        self._show = show
        self._supportLang = langs
    }
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                LazyVStack(alignment: .leading, content: {
                    ForEach($options, id: \.lang) { opt in
                        Toggle(opt.lang.wrappedValue.showName, isOn: opt.check)
                    }
                })
            }
            HStack {
                Button {
                    supportLang = options.filter { $0.check }.map { $0.lang }
                    show = false
                } label: {
                    Text("确定")
                }

                Button {
                    show = false
                } label: {
                    Text("取消")
                }
            }
        }.padding()
    }
}
