//
//  goparserApp.swift
//  goparser
//
//  Created by spec on 2023/8/3.
//

import SwiftUI

@main
struct goparserApp: App {
    var body: some Scene {
//        WindowGroup {
//            EmptyView()
//        }.commands {
////            TextFormattingCommands()
//            MenuCommands()
//        }
//        
        
        WindowGroup("", id: Const.WindowGroupID.project.rawValue, for: String.self) { projectName in
              
            if let name = projectName.wrappedValue {
                ContentView(ProjectCache.shared.fetchProject(by: name))
            } else {
                ContentView(nil)
            }
            
        }.commands {
            //            TextFormattingCommands()
                        MenuCommands()
                    }
    }
}


struct Const {
    enum WindowGroupID: String, CaseIterable {
        case project = "project"
    }
}
