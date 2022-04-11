//
//  ContentView.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    let viewModel = RequestViewModel()
    
    var body: some View {
        ProfileView(userViewModels: viewModel.users, sortedViews: viewModel.sortedViews)
    }
}
