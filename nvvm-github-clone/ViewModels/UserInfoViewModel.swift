//
//  UserInfoViewModel.swift
//  nvvm-github-clone
//
//  Created by Admin on 24/08/2021.
//

import Foundation

class UserInfoViewModel: ObservableObject {
    
    init() {
        fetchUserInfo()
    }
    
    @Published var userInfo = UserInfo(login: "Test", avatarUrl: "", bio: "This is a fake account.", followers: 15, following: 165, createdAt: "2017-11-07T15:33:44Z")
    
    private func fetchUserInfo(username: String = "johanln") {
        guard let userInfoUrl = URL(string: "https://api.github.com/users/\(username)") else {
            fatalError("Url is not correct.")
        }
        
        APIServices().fetchUserInfo(url: userInfoUrl) { [weak self] (user) in
            if let user = user {
                DispatchQueue.main.async {
                    self?.userInfo = user
                }
            }
        }
    }
}
