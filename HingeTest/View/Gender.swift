//
//  Gender.swift
//  HingeTest
//
//  Created by RBS70 on 4/11/22.
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
        }
    }
}
