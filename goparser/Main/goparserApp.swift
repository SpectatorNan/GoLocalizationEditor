//
//  goparserApp.swift
//  goparser
//
//  Created by spec on 2023/8/3.
//

import SwiftUI
import SwiftData

@main
struct goparserApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Project.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Cloud not create ModelContainer: \(error)")
        }
        
    }()
    
    var body: some Scene {
//        WindowGroup {
//            EmptyView()
//        }.commands {
////            TextFormattingCommands()
//            MenuCommands()
//        }
//        
        
        WindowGroup("", id: Const.WindowGroupID.project.rawValue, for: String.self) { projectName in
            ContentView()
//            if let name = projectName.wrappedValue {
//                ContentView(ProjectCache.shared.fetchProject(by: name))
//            } else {
//                ContentView(nil)
//            }
            
        }
        .modelContainer(sharedModelContainer)
        .commands {
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
