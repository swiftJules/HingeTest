//
//  ProfileContainer.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import SwiftUI

struct ProfileContainer: View {
    let usersViewModel: UsersViewModel?
    @State var index = 0
    var body: some View {
        if index < usersViewModel?.users.count ?? 0 {
            ZStack {
                VStack(alignment: .leading) {
                    NameView(name: usersViewModel?.users[index].name ?? "")
                        .padding([.bottom, .leading])
                    if let photoString = usersViewModel?.users[index].photo {
                        ProfileImage(urlString: photoString)
                    }
                    DetailView(user: usersViewModel?.users[index])
                    Spacer()
                }//:VSTACK
                ZStack {
                    Button("Next") {
                        index += 1
                    }
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding([.bottom, .leading])
                }
            }//:ZSTACK
        }
    }
}
