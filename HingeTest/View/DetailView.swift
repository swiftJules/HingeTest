//
//  DetailView.swift
//  HingeTest
//
//  Created by RBS70 on 4/10/22.
//

import SwiftUI

struct DetailView: View {
    let user: UserViewModel?
    var body: some View {
        if let user = user {
            VStack(alignment: .leading) {
                Text("Gender")
                    .font(.title)
                    .bold()
                Text(user.gender)
            } //:VSTACK
        }
    }
}
