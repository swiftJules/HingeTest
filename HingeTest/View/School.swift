//
//  School.swift
//  HingeTest
//
//  Created by RBS70 on 4/11/22.
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
        }
    }
}
