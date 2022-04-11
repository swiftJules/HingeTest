//
//  Hobbies.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/11/22.
//

import SwiftUI

struct Hobbies: View {
    let user: UserViewModel?
    var body: some View {
        if user?.hobbies != nil {
            VStack(alignment: .leading) {
                Text("Hobbies")
                    .font(.title)
                    .bold()
                Text(user?.hobbies ?? "")
            }//:VSTACK
        }
    }
}
