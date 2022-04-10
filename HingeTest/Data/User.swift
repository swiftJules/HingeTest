//
//  User.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
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

//"users": [
//    {
//      "id": 1,
//      "name": "Jim",
//      "gender": "m",
//      "about": "*Looks at Camera*",
//      "photo": "https://upload.wikimedia.org/wikipedia/en/7/7e/Jim-halpert.jpg"
//    },
//    {
//      "id": 2,
//      "name": "Pam",
//      "gender": "f",
//      "photo": "https://upload.wikimedia.org/wikipedia/en/6/67/Pam_Beesley.jpg",
//      "school": "Pratt Institute"
//    },
//    {
//      "id": 3,
//      "name": "Michael",
//      "photo": "https://upload.wikimedia.org/wikipedia/en/d/dc/MichaelScott.png",
//      "gender": "m",
//      "about": "Scarn, Michael Scarn. Shaken not stirred.",
//      "school": "School of Life"
//    },
//    {
//      "id": 4,
//      "name": "Dwight",
//      "gender": "m",
//      "photo": "https://upload.wikimedia.org/wikipedia/en/c/cd/Dwight_Schrute.jpg"
//    },
//    {
//      "id": 5,
//      "name": "Andy",
//      "photo": "https://upload.wikimedia.org/wikipedia/en/8/84/Andy_Bernard_photoshot.jpg",
//      "gender": "m",
//      "school": "Cornell University",
//      "about": "I was on American Idol",
//      "hobbies": [
//        "Singing",
//        "Sailing"
//      ]
//    },
//    {
//      "id": 6,
//      "name": "Kelly",
//      "gender": "f",
//      "about": "ARE YOU READING THIS RYAN?!?"
//    }
//  ]
