//
//  Name.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/11/22.
//

import SwiftUI

struct Name: View {
    let user: UserViewModel?
    var body: some View {
        if let user = user {
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.title)
                    .bold()
            }
            .padding()
        }
    }
}
