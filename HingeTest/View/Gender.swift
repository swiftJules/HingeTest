//
//  Gender.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/11/22.
//

import SwiftUI

struct Gender: View {
    let user: UserViewModel?
    var body: some View {
        if let user = user {
            VStack(alignment: .leading) {
                Text("Gender")
                    .font(.title)
                    .bold()
                Text(user.gender)
            } //:VSTACK
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 0))
        }
    }
}
