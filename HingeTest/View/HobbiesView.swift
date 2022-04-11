//
//  HobbiesView.swift
//  HingeTest
//
//  Created by RBS70 on 4/10/22.
//

import SwiftUI

struct HobbiesView: View {
    let user: UserViewModel?
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hobbies")
                .font(.title)
                .bold()
            Text(user?.hobbies ?? "")
        }//:VSTACK
    }
}
