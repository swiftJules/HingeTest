//
//  UserViewModel.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import Foundation

class UserViewModel {
    let model: User?
    
    init(model: User) {
        self.model = model
    }
    
    var name: String {
        model?.name ?? ""
    }
    
    var photo: String? {
        model?.photo
    }
    
    var gender: String {
        if model?.gender == "f" {
            return "Female"
        } else {
            return "Male"
        }
    }
    
    var about: String? {
        model?.about
    }
    
    var school: String? {
        model?.school
    }
    
    var hobbies: String? {
        model?.hobbies?.first
    }
}
