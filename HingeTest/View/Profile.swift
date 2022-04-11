//
//  Profile.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/11/22.
//

import SwiftUI

struct ProfileView: View {
    @State var userIndex = 0
    let userViewModels: [UserViewModel]?
    var sortedViews: [Any] = []
    var body: some View {
        if userIndex < userViewModels?.count ?? 0 {
            if let user = userViewModels?[userIndex] {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        ForEach(0..<sortedViews.count, id: \.self) { index in
                            self.buildView(types: self.sortedViews, index: index, user: user)
                        }
                        Spacer()
                    }//:VSTACK
                    ZStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button {
                                if let count = userViewModels?.count, userIndex != count - 1 {
                                    userIndex += 1
                                }
                            } label: {
                                Text("Next")
                                    .frame(width: 75, height: 75)
                                    .background(.white)
                                    .clipShape(Circle())
                                    .shadow(color: .gray, radius: 5, x: 0, y: 2)
                            }
                            .padding()
                            .buttonStyle(PlainButtonStyle())
                        }//:HSTACK
                    }//:ZSTACK
                    Spacer()
                }//:VSTACK
            }
        }
    }
    
    func buildView(types: [Any], index: Int, user: UserViewModel) -> AnyView {
        switch types[index].self {
        case is Photo.Type:
            return AnyView( Photo(user: user) )
        case is About.Type:
            return AnyView( About(user: user) )
        case is School.Type:
            return AnyView( School(user: user) )
        case is Gender.Type:
            return AnyView( Gender(user: user) )
        case is Hobbies.Type:
            return AnyView( Hobbies(user: user) )
        case is Name.Type:
            return AnyView( Name(user: user) )
        default: return AnyView(EmptyView())
        }
    }
}
