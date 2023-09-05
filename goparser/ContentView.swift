//
//  ContentView.swift
//  goparser
//
//  Created by spec on 2023/8/3.
//

import SwiftUI
import UniformTypeIdentifiers

struct TargetFile {
    let url: URL
    
    static func == (lhs: TargetFile, rhs: TargetFile) -> Bool {
        return lhs.url == rhs.url
    }
}

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


struct ContentView: View {
    
    @State var targetFiles: [TargetFile] = []
    @State var exportPath: String = ""
    
    @State var showExportPath: Bool = false
    @State var showLanguageOption: Bool = false
    
    @State var sources: [LanguageRow] = []
    
    
    @State var supportLanguage: [LocaleLanguage] = [.zh_hans]
    @State var headers: [String] = ["key"]
    @State var colmuns: [GridItem] = [GridItem(.flexible())]
    
    var tableHeader: some View {
        ForEach(headers, id: \.self) { header in
            Text(header)
        }
    }
    
    @ViewBuilder
    func tableRow(_ value: LanguageRow) -> some View {
        Text(value.name)
        ForEach(supportLanguage) { lang in
             let txt = value.binding(for: lang)
            TextField("", text: txt).id(value.name+lang.id)
        }
    }
    
     
    
    var body: some View {
        HStack {
            VStack {
                Button {
                    addFiles()
                } label: {
                    Text("新增文件")
                }
                
                List(targetFiles, id: \.url) { file in
                    HStack {
                        Text(file.url.absoluteString)
                        Button {
                            targetFiles.removeAll(where: { $0 == file })
                        } label: {
                            Text("删除")
                        }

                    }
                }
            }.frame(width: 300)
            VStack(alignment:.leading, spacing: 10) {
                HStack {
                    Button {
    //                    LParser().parse()
                        showLanguageOption.toggle()
                    } label: {
                        Text("语种")
                    }
                    Button {
                        for source in sources {
                            print(source)
                        }
                    } label: {
                        Text("打印")
                    }
                    Button {
                        parserToml()
                    } label: {
                        Text("读取toml")
                    }
                    Spacer()
                    Button {
                        showExportPath = true
                    } label: {
                        Text("导出路径")
                    }
                    if exportPath.count > 0 {
                        Text(exportPath)
                    } else {
                        Text("未配置导出路径")
                    }
                }
                ScrollView {
                    LazyVGrid(columns: colmuns, alignment: .leading, content: {
//                        ForEach(headers, id: \.self) { header in
//                            Text(header)
//                        }
                        tableHeader
                        ForEach(sources) { lrow in
                            tableRow(lrow)
                        }
//                        Text("example1")
//                        Text("example2")
//                        Text("example3")
//                        Text("example4")
//                        Text("example5")
                    })
                    
                }
                ForEach(supportLanguage) { lang in
//                    TableColumn(lang, value: \)
                }
            }
            .padding()
            .frame(minWidth: 900)
        }
        .padding()
        .sheet(isPresented: $showLanguageOption, content: {
            LanguageOptionsView(langs: $supportLanguage, show: $showLanguageOption)
        })
        .onChange(of: supportLanguage) { newValue in
            print("support language change")
            refreshColumns()
        }
        .onAppear(perform: {
            refreshColumns()
            for i in 0..<6 {
                sources.append(LanguageRow(name: "example\(i)", values: [:]))
            }
        })
    }
    
    private func refreshColumns() {
        headers = ["key"]
        for lang in supportLanguage {
            headers.append(lang.showName)
        }
        colmuns = Array(repeating: GridItem(.flexible()), count: headers.count)
    }
    
    private func addFiles() {
        if let urls = Pannel.openFiles(multipleSelection: true, allowFileTypes: ["go"]) {
            print(urls)
            urls.forEach { it in
                if !targetFiles.contains(where: { $0 == TargetFile(url: it)}) {
                    targetFiles.append(TargetFile(url: it))
                }
            }
//            targetFiles.append(contentsOf: urls.map { TargetFile(url : $0) })
        }
    }
    
    private func parserToml() {
        let filename = "/Users/spec/Documents/kjxq/gps/active.zh1.toml"
        do {
            let toml = try Toml(contentsOfFile: filename)
            print(toml.description)
            print("===============")
//            if let p = toml.table("Parameters") {
//                print("start")
//                print(p)
//                print("end")
//            }
            let ep = try Toml(withString: "")
            ep.set(value: "abc1", for: ["abc1"])
            ep.set(value: "abc2", for: ["abc2"])
            ep.set(value: "abc3", for: ["abc3"])
            ep.set(value: "abc4", for: ["abc4"])
            toml.updateTable(with: ["Parameters"], toml: ep)
//            toml.set(value: ep, for: ["Parameters"])
//            if let p = toml.table("Parameters") {
//                print("start")
//                print(p)
//                print("end")
//            }
//            toml.removeTable(from: ["Parameters"])
            print(toml.description)
        } catch {
            print(error)
        }
    }
}

import FileKit
import Antlr4
 
struct LParser {
    
    
 let filename = "/Users/spec/Documents/GitHub/fans/services/admin/api/internal/types/types.go"
    
    func parse() {
        let textFile = File<String>(path: FPath(filename))
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
//#Preview {
//    ContentView()
//}
//rSJyRGQd3y3V
//28836
