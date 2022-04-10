//
//  UsersViewModel.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import Foundation

class UsersViewModel {
    var users: [UserViewModel] = []
    
    init() {
        self.fetchUsers()
    }
    
    func fetchUsers() {
        NetworkRequester.shared.fetchUsers { users in
            self.users = users
        }
    }
}
