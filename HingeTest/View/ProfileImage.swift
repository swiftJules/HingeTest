//
//  ProfileImage.swift
//  HingeTest
//
//  Created by RBS70 on 4/9/22.
//

import SwiftUI

struct ProfileImage: View {
    let urlString: String
    var body: some View {
        let url = URL(string: urlString)!
        AsyncImage(url: url) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 400)

                .clipped()
        } placeholder: {
            Image(systemName: "photo")
                .imageScale(.small)
                .foregroundColor(.gray)
        }
    }
}
