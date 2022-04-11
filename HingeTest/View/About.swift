//
//  About.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/11/22.
//

import SwiftUI

struct About: View {
    let user: UserViewModel?
    var body: some View {
        if user?.about != nil {
            VStack(alignment: .leading) {
                Text("About")
                    .font(.title)
                    .bold()
                Text(user?.about ?? "")
            }//:VSTACK
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 0))
        }
    }
}
