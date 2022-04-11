//
//  School.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/11/22.
//

import SwiftUI

struct School: View {
    let user: UserViewModel?
    var body: some View {
        if user?.school != nil {
            VStack(alignment: .leading) {
                Text("School")
                    .font(.title)
                    .bold()
                Text(user?.school ?? "")
            }//:VSTACK
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 0))
        }
    }
}
