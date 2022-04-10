//
//  NameView.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import SwiftUI

struct NameView: View {
    let name: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.title)
                .bold()
        }
    }
}
