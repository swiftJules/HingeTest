//
//  RequestViewModel.swift
//  HingeTest
//
//  Created by RBS70 on 4/11/22.
//

import Foundation

class RequestViewModel {
    var users: [UserViewModel] = []
    var sortedViews: [Any] = []
    var configuration: [String] = []
    
    init() {
        self.fetchUsers()
        self.fetchConfig()
    }
    
    func fetchUsers() {
        NetworkRequester.shared.fetchUsers { users in
            self.users = users
        }
    }
    
    func fetchConfig() {
        NetworkRequester.shared.fetchConfig { config in
            self.configuration = config.profile
            self.sortViews()
        }
    }
    
    func sortViews() {
        let views: [Any] = [About.self, Photo.self, Name.self, Hobbies.self, School.self, Gender.self]
        
        for string in configuration {
            let view = views.filter { view in
                string == String(describing: view.self).lowercased() }
            sortedViews.append(view[0])
        }
    }
}
