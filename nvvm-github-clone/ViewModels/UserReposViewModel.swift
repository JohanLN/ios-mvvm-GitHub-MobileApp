//
//  HomeViewModel.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import Foundation

class UserReposViewModel: ObservableObject {
    
    init() {
        fetchUserRepos()
    }
    
    @Published var userRepos = [UserRepos(id: 1, name: "Test1st", fullName: "Test/Test1st", privateRepo: true, repoUrl: "URL", description: "This is a fake repository.", language: "Swift", updatedAt: "2017-11-07T15:33:44Z", owner: UserRepos.Owner(id: 1, login: "Test", avatarUrl: ""))]
    
    private func fetchUserRepos(username: String = "johanln") {
        
        guard let userReposUrl = URL(string: "https://api.github.com/users/\(username)/repos") else {
            fatalError("Url is not correct.")
        }

        APIServices().fetchUserRepos(url: userReposUrl) { [weak self] (userRepos) in
            if let userRepos = userRepos {
                DispatchQueue.main.async {
                    self?.userRepos = userRepos
                }
            }
        }
    }
}
