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
    
    @Published var userInfo = UserInfo(login: "", avatarUrl: "", bio: "", followers: 0, following: 0, createdAt: "")
    
    private func fetchUserInfo() {
        let username = "quemenerjeremy"
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
