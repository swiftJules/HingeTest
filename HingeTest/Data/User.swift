//
//  User.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/9/22.
//

import Foundation

struct User: Decodable {
    let id: Int
    let name: String
    let photo: String?
    let gender: String
    let about: String?
    let school: String?
    let hobbies: [String]?
}

struct Users: Decodable {
    let users: [User]
}
