//
//  NetworkRequester.swift
//  HingeTest
//
//  Created by Juliana Connors on 4/9/22.
//

import Foundation

class NetworkRequester {
    static let shared = NetworkRequester()
    
    func fetchUsers(closure: @escaping ([UserViewModel]) -> Void) {
        guard let url = URL(string: HingeConstants.userURL) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(Users.self, from: data)
                 var userViewModels: [UserViewModel] = []
                for userModel in response.users {
                    let viewModel = UserViewModel(model: userModel)
                    userViewModels.append(viewModel)
                }
                closure(userViewModels)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func fetchConfig(closure: @escaping (Config) -> Void) {
        guard let url = URL(string: HingeConstants.configURL) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(Config.self, from: data)
                closure(response)
            } catch {
                print(error)
            }
        }.resume()
    }
}
