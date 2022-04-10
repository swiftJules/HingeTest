//
//  ContentView.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    let usersViewModel = UsersViewModel()
    
    var body: some View {
        ProfileContainer(usersViewModel: usersViewModel)
    }
}
