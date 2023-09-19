//
//  ContentView.swift
//  goparser
//
//  Created by spec on 2023/8/3.
//

import SwiftUI
import FileKit
//import Antlr4

struct ContentView: View {
    
    
    
    @State var targetFiles: [TargetFile] = []
    @State var exportPath: String = ""
    @State var projectName: String = ""
    @State var configExportPath: Bool = false
    @State var showSaveProject: Bool = false
    
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
    
    //    @State var sources: [LanguageRow] = []
    
    @State var rootSources: [String: [LocaleLanguage: String]] = [:]
    
    @State var tomlSources: [LocaleLanguage: Toml] = [:]
    
    
    @State var supportLanguage: [LocaleLanguage] = [.zh_hans]
    @State var headers: [String] = ["key"]
    @State var colmuns: [GridItem] = [GridItem(.flexible())]
    
    
    init(_ proj: ProjectCache.Project?) {
        
        if let proj {
            project = proj
            _targetFiles = State(initialValue: proj.targetFiles)
            _exportPath = State(initialValue: proj.exportPath)
            _projectName = State(initialValue: proj.name)
        }
    }
    
    private var project: ProjectCache.Project? = nil
    {
        didSet {
            if let project {
                targetFiles = project.targetFiles
                exportPath = project.exportPath
            } else {
                targetFiles = []
                exportPath = ""
            }
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
            let sources = Array(rootSources)
            VStack(alignment:.leading, spacing: 10) {
                HStack {
                    Button {
                        showSaveProject = true
                    } label: {
                        Text("保存项目")
                    }
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
                    Button {
                        export()
                    } label: {
                        Text("导出")
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
                        ForEach(sources.sorted(by: { $0.key < $1.key }), id: \.key) { lrow in
                            
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
        .navigationTitle(projectName)
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
        .sheet(isPresented: $showSaveProject, content: {
            saveProjectView()
        })
        .onChange(of: supportLanguage) { newValue in
            print("support language change")
            refreshColumns()
        }
        .onAppear(perform: {
            refreshColumns()
            //            for i in 0..<6 {
            //                sources.append(LanguageRow(name: "example\(i)", values: [:]))
            //            }
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
    
    private func selectExportPath() {
        if let urls = Pannel.selectFloder(createDirectories: true) {
            print(urls)
            if let url = urls.first {
                
                if let target = FPath(url: url), target.isDirectory {
                    exportPath = target.rawValue
                }
            }
            //            targetFiles.append(contentsOf: urls.map { TargetFile(url : $0) })
        }
    }
    
    private func export() {
        do {
            
            for language in supportLanguage {
                var pToml = try Toml(withString: "")
                for source in rootSources {
                    pToml.set(value: source.value[language] ?? "", for: [source.key])
                }
                if let toml = tomlSources[language] {
                    toml.updateTable(with: ["Parameters"], toml: pToml)
                    tomlSources[language] = toml
                } else {
                    let root = try Toml(withString: "")
                    root.updateTable(with: ["Parameters"], toml: pToml)
                    tomlSources[language] = root
                }
                let filePath = FPath(exportPath) + language.fileName
                if filePath.exists {
                    
                }
                let textFile = TextFile(path: filePath)
                try tomlSources[language]!.description |> textFile
            }
            
            //            for toml in tomlSources {
            //                var pToml = try Toml(withString: "")
            //                for source in rootSources {
            //                    pToml.set(value: source.value[toml.key] ?? "", for: [source.key])
            //                }
            //                toml.value.updateTable(with: ["Parameters"], toml: pToml)
            //                print(toml.value)
            //                print("==========")
            //                print(tomlSources[toml.key])
            //                tomlSources[toml.key] = toml.value
            //            }
        } catch { print(error) }
    }
    
    @ViewBuilder
    private func configExportPathView() -> some View {
        VStack(alignment:.leading, spacing: 20) {
            Text("导出路径")
            HStack {
                TextField("请输入导出路径", text: $exportPath)
                    .frame(width: 200)
                Button {
                    selectExportPath()
                } label: {
                    Text("选择文件夹")
                }
            }
            Button {
                configExportPath = false
            } label: {
                Text("确定")
            }
        }.padding()
        
    }
    
    
    
    @State var confirmSaveProjectExistWetherReplace = false
    
    @ViewBuilder
    private func saveProjectView() -> some View {
        VStack(alignment:.leading, spacing: 20) {
            Text("保存项目")
            TextField("请输入项目名", text: $projectName)
                .frame(width: 200)
            Button {
                saveProject()
            } label: {
                Text("确定")
            }
        }.padding()
            .sheet(isPresented: $confirmSaveProjectExistWetherReplace) {
                VStack(alignment: .center) {
                    Text("确认保存")
                    Button {
                        confirmSaveProjectExistWetherReplace = false
                        cofirmSaveProject()
                    } label: {
                        Text("确定")
                    }
                }.padding()
            }
    }
    
    private func cofirmSaveProject() {
        let project = ProjectCache.Project(name: projectName, targetFiles: targetFiles, exportPath: exportPath)
        ProjectCache.shared.saveProject(name: projectName, project: project)
        showSaveProject = false
    }
    
    private func saveProject() {
        if let project, project.name == projectName {
            cofirmSaveProject()
        } else if let proj = ProjectCache.shared.fetchProject(by: projectName) {
            confirmSaveProjectExistWetherReplace = true
        } else {
            cofirmSaveProject()
        }
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
        var fieldNames: Set<String> = []
        for targetFile in targetFiles {
            if let path = FPath(url:targetFile.url), path.exists {
                let textFile = File<String>(path: path)
                do {
                    let text = try textFile.read()
                    if let result = try GoModelParser.parser(text) {
                        //                        modelResults.append(result)
                        for model in result.models {
                            if let model = model as? TypeStruct {
                                if model.name.text == "GetDefaultRegisterInfoResp" {
                                    print()
                                }
                                for field in model.fields {
                                    
                                    if field.name.text == "string" {
                                        print()
                                    }
                                    fieldNames.insert(field.name.text)
                                }
                            }
                        }
                    }
                } catch { print(error) }
            }
        }
        //        for fieldName in fieldNames {
        //            if var dic = rootSources[fieldName] {
        //                dic[language] = ""
        //            } else {
        //                rootSources[fieldName] = [language: ""]
        //            }
        //        }
        
        for language in supportLanguage {
            let filePath = dirPath + language.fileName
            if filePath.exists {
                let toml = readLocalizationFile(fileName: filePath)
                tomlSources[language] = toml
                if let table = toml.table("Parameters") {
                    do {
                        for fieldName in fieldNames {
                            if let trans: String = try table.fetch(fieldName) {
                                if var dic = rootSources[fieldName] {
                                    dic[language] = trans
                                    rootSources[fieldName] = dic
                                } else {
                                    rootSources[fieldName] = [language: trans]
                                }
//                                continue
                            } else if var dic = rootSources[fieldName] {
                                dic[language] = ""
                                rootSources[fieldName] = dic
                            } else {
                                rootSources[fieldName] = [language: ""]
                            }
                        }
                    } catch { print(error) }
                }
            }
            //                print("not load exists localization file, language: \(language), filedName: \(fieldName)")
            
        }
        
        //        for language in supportLanguage {
        //            let filePath = dirPath + language.fileName
        //            if filePath.exists {
        //             let toml = readLocalizationFile(fileName: filePath)
        //                tomlSources[language] = toml
        //                if let table = toml.table("Parameters") {
        //
        //                }
        //
        //            }
        //        }
    }
    
    private func readGoFile(filePath: String) {
        
    }
    
    private func readLocalizationFile(fileName: FPath) -> Toml {
        do {
            let toml = try Toml(contentsOfFile: fileName.rawValue)
            //                        if let p = toml.table("Parameters") {
            //                            print("start")
            //                            print(p)
            //                            print("end")
            //                        }
            return toml
        } catch {
            print(error)
        }
        return try! Toml(withString: "")
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




//struct LParser {
//
//
// let filename = "/Users/spec/Documents/GitHub/fans/services/admin/api/internal/types/types.go"
//
//    func parse() {
//        let textFile = File<String>(path: FPath(filename))
//        do {
//            let text = try textFile.read()
//            print(text)
//            var count = 0
//            if let result = try GoModelParser.parser(text) {
//                for model in result.models {
//                    if let model = model as? TypeStruct {
//                        print("type: \(model.name.text)")
//                        for field in model.fields {
//                            print("==>field: \(field.name.text)")
//                            count += 1
//                            if let tag = field.tag {
//                                print("====>tag: \(tag.text)")
//                            } else {
//                                print("====>tag: nil")
//                            }
//                        }
//                    } else {
//                        print("not struct")
//                    }
//                }
//            }
//            print("count: \(count)")
//
//        } catch {
//            print(error)
//        }
//    }
//
//}

//turbo2pay@gmail.com
//Qaz123456.
//Jason1158998.
//admin2021168.
//#Preview {
//    ContentView()
//}
//rSJyRGQd3y3V
//28836
