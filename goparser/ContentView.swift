//
//  ContentView.swift
//  goparser
//
//  Created by spec on 2023/8/3.
//

import SwiftUI
import UniformTypeIdentifiers

struct ContentView: View {
    
    @State var targetFiles: [TargetFile] = []
    @State var exportPath: String = ""
    @State var configExportPath: Bool = false
    
    @State var exportPathErrMsg: String = ""
    var exportPathErrMsgShow: Binding<Bool> {
        Binding<Bool> {
            return !exportPathErrMsg.isEmpty
        } set: { newValue, trans in
            if !newValue {
                exportPathErrMsg = ""
            }
        }

    }
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
                        loadToml()
                    } label: {
                        Text("读取toml")
                    }
                    Spacer()
                    Button {
                         configExportPath = true
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
        .sheet(isPresented: exportPathErrMsgShow, content: {
            errorAlert()
        })
        .sheet(isPresented: $configExportPath, content: {
            configExportPathView()
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
    
    @ViewBuilder
    private func configExportPathView() -> some View {
        VStack(alignment:.leading, spacing: 20) {
            Text("导出路径")
            TextField("请输入导出路径", text: $exportPath)
                .frame(width: 200)
            Button {
                configExportPath = false
            } label: {
                Text("确定")
            }
        }.padding()
    
    }
    
    @ViewBuilder
    private func errorAlert() -> some View {
        VStack {
            Text(exportPathErrMsg)
            Button {
                exportPathErrMsg = ""
            } label: {
                Text("确定")
            }
        }.padding()
    }
    
    private func loadToml() {
        if exportPath.isEmpty {
            exportPathErrMsg = "导出路径不能为空"
            return
        }
        let dirPath = FPath(exportPath)
        if !dirPath.isDirectory {
            exportPathErrMsg = "导出路径不是文件夹"
            return
        }
        
        for language in supportLanguage {
            let filePath = dirPath + language.fileName
            if filePath.exists {
                readLocalizationFile(fileName: filePath)
            }
        }
    }
    
    private func readLocalizationFile(fileName: FPath) {
        do {
            let toml = try Toml(contentsOfFile: fileName.rawValue)
                        if let p = toml.table("Parameters") {
                            print("start")
                            print(p)
                            print("end")
                        }
        } catch {
            print(error)
        }
    }
    
    private func stpparserToml() {
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
