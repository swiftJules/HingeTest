//
//  SchoolView.swift
//  HingeTest
//
//  Created by RBS70 on 4/10/22.
//

import SwiftUI

struct SchoolView: View {
    let identifier = "school"
    let user: UserViewModel?
    var body: some View {
        VStack(alignment: .leading) {
            Text("School")
                .font(.title)
                .bold()
            Text(user?.school ?? "")
        }//:VSTACK
    }
}
