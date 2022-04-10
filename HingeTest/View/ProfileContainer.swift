//
//  ProfileContainer.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import SwiftUI

struct ProfileContainer: View {
    let usersViewModel: UsersViewModel?
    let index = 0
    var body: some View {
        VStack(alignment: .leading) {
            NameView(name: usersViewModel?.users.first?.name ?? "")
                .padding([.bottom, .leading])
            ProfileImage(urlString: usersViewModel?.users.first?.name ?? "")
            Spacer()
        }//:VSTACK
    }
}
