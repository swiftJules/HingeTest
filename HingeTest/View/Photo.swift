//
//  Photo.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/11/22.
//

import SwiftUI

struct Photo: View {
    let user: UserViewModel?
    var body: some View {
        if let url = URL(string: user?.photo ?? "") {
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
}
