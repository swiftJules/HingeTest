//
//  Profile.swift
//  HingeTest
//
//  Created by RBS70 on 4/11/22.
//

import SwiftUI

struct ProfileView: View {
    @State var userIndex = 0
    let userViewModels: [UserViewModel]?
    var sortedViews: [Any] = []
    var body: some View {
        if userIndex < userViewModels?.count ?? 0 {
            if let user = userViewModels?[userIndex] {
                ZStack {
                    VStack(alignment: .leading) {
                        ForEach(0..<Int(sortedViews.count)) { index in
                            self.buildView(types: self.sortedViews, index: index, user: user)
                        }
                        Spacer()
                    }//:VSTACK
                    ZStack {
                        Button("Next") {
                            userIndex += 1
                        }
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .padding([.bottom, .leading])
                    }//:ZSTACK
                }//:ZSTACK
            }
        }
    }
    
    func buildView(types: [Any], index: Int, user: UserViewModel) -> AnyView {
        switch types[index].self {
        case is Name.Type:
            return AnyView( Name(user: user) )
        case is Photo.Type:
            return AnyView( Photo(urlString: user.photo) )
        case is Gender.Type:
            return AnyView( Gender(user: user) )
        case is About.Type:
            return AnyView( About(user: user) )
        case is School.Type:
            return AnyView( School(user: user) )
        case is Hobbies.Type:
            return AnyView( Hobbies(user: user) )
        default: return AnyView(EmptyView())
        }
    }
}
