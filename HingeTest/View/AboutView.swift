//
//  AboutView.swift
//  HingeTest
//
//  Created by RBS70 on 4/10/22.
//

import SwiftUI

struct AboutView: View {
    let user: UserViewModel?
    var body: some View {
        VStack(alignment: .leading) {
            Text("About")
                .font(.title)
                .bold()
            Text(user?.about ?? "")
        }//:VSTACK
    }
}

