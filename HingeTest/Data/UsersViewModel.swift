//
//  UsersViewModel.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import Foundation

class UsersViewModel {
    var users: [UserViewModel] = []
    var config: [Int: String] = [:]
    
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
            var configDict: [Int: String] = [:]
            for (index, string) in config.profile.enumerated() {
                 configDict[index] = string
            }            
            self.config = configDict
        }
    }
}
