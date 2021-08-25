//
//  HomeViewModel.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import Foundation

//class UserReposViewModel {
//
//    let userRepos: UserRepos
//
//    init(userRepos: UserRepos) {
//        self.userRepos = userRepos
//    }
//
//    var id: Int {
//        return self.userRepos.id
//    }
//
//    var name: String {
//        return self.userRepos.name
//    }
//
//    var fullName: String {
//        return self.userRepos.fullName
//    }
//
//    var repoUrl: String {
//        return self.userRepos.repoUrl
//    }
//
//    var privateRepo: Bool {
//        return self.userRepos.privateRepo
//    }
//
//    var owner: UserRepos.Owner {
//        return self.userRepos.owner
//    }
//
//}

class UserReposViewModel: ObservableObject {
    
    init() {
        fetchUserRepos()
    }
    
    @Published var userRepos = [UserRepos(id: 1, name: "Test1st", fullName: "Test/Test1st", privateRepo: true, repoUrl: "URL", description: "This is a fake repository.", language: "Swift", updatedAt: "25/08/2021", owner: UserRepos.Owner(id: 1, login: "Test", avatarUrl: ""))]
    
    private func fetchUserRepos() {
        
        let username = "johanln"
        guard let userReposUrl = URL(string: "https://api.github.com/users/\(username)/repos") else {
            fatalError("Url is not correct.")
        }

        APIServices().fetchUserRepos(url: userReposUrl) { userRepos in
            if let userRepos = userRepos {
                self.userRepos = userRepos
            }
        }
    }
}
