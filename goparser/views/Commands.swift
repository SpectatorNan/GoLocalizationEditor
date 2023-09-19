//
//  Commands.swift
//  goparser
//
//  Created by spec on 2023/9/17.
//

import SwiftUI

struct MenuCommands: Commands {
    
    var body: some Commands {
        CommandGroup(replacing: .newItem) {
            SelectProjectsView()
        }
        
//        CommandGroup(before: .newItem) {
//            SelectProjectsView()
//        }
    }
}
 
struct SelectProjectsView: View {
    
    @State private var selected = ""
    @State private var projectNames: [String] = []
    @Environment(\.openWindow) var openWindow
    
    var body: some View {
        // 1
        Divider()

        Button {
//            openWindow(id: Const.WindowGroupID.project.rawValue, value: nil)
            openWindow(id: Const.WindowGroupID.project.rawValue)
        } label: {
            Text("New Project")
        }

        
        // 2
        Picker("Projects", selection: $selected) {
          // 3
            ForEach(projectNames, id: \.self) { name in
            // 4
//                Button {
//                    openWindow(id: Const.WindowGroupID.project.rawValue, value: name)
//                } label: {
//                    Text(name)
//                }
                Text(name)
              .tag(name)
          }
        }.onAppear {
            projectNames = ProjectCache.shared.projectNames
        }
        .onChange(of: selected) { newValue in
            openWindow(id: Const.WindowGroupID.project.rawValue, value: newValue)
        }
        // not work
        .onChange(of: ProjectCache.shared.projectNames) {  newValue in
            projectNames = ProjectCache.shared.projectNames
        }
    }
}
