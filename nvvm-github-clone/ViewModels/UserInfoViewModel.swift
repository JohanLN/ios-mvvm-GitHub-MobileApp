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
    
    @Published var userInfo = UserInfo(login: "Test", avatarUrl: "", bio: "This is a fake account.", followers: 15, following: 165, createdAt: "25/08/2021")
    
    private func fetchUserInfo() {
        let username = "johanln"
        guard let userInfoUrl = URL(string: "https://api.github.com/users/\(username)") else {
            fatalError("Url is not correct.")
        }
        
        APIServices().fetchUserInfo(url: userInfoUrl) { user in
            if let user = user {
                self.userInfo = user
            }
        }
    }
}
