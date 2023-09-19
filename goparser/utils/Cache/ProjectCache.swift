//
//  ProjectCache.swift
//  goparser
//
//  Created by spec on 2023/9/17.
//

import Foundation

// unsupport macos 13
//@Model
//class Project: CustomStringConvertible {
//    var id: UUID
//    var projectName: String
//    var path: String
//    var targetFiles: [TargetFile]
//    var exportPath: String
//
//    init(id: UUID, projectName: String, path: String, targetFiles: [TargetFile], exportPath: String) {
//        self.id = id
//        self.projectName = projectName
//        self.path = path
//        self.targetFiles = targetFiles
//        self.exportPath = exportPath
//    }
//
//
//    var description: String {
//        return "id: \(id),\nproject: \(projectName),\npath: \(path)"
//    }
//}

class ProjectCache {
    
    private init() {}
    static let shared = ProjectCache()
    
    struct Project: Codable {
        var name: String
        var targetFiles: [TargetFile]
        var exportPath: String
    }
    
    @UserDefault("project", defaultValue: [:])
    private var cacheProjects: [String: Project]
    
    var projectNames: [String] {
        return cacheProjects.keys.sorted()
    }
     
    
    func fetchProject(by name: String) -> Project? {
        return cacheProjects[name]
    }
    
    func saveProject(name: String, project: Project) {
        cacheProjects[name] = project
    }
    
    
}
