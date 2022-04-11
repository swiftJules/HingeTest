//
//  NameView.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import SwiftUI

struct NameView: View {
    let user: UserViewModel?
    var body: some View {
        if let user = user {
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.title)
                    .bold()
            }
        }
    }
}
