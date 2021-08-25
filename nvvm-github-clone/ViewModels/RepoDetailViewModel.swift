//
//  RepoDetailViewModel.swift
//  nvvm-github-clone
//
//  Created by Admin on 23/08/2021.
//

import Foundation

class RepoDetailViewModel: ObservableObject {
    
    init(repoName: String) {
        self.repoName = repoName
        fetchRepoDetail()
        fetchRepoBranches()
    }
    
    var repoName: String

    
    @Published var repoDetail = RepoDetail(id: 0, name: "Test1st", fullName: "Test/Test1st", privateRepo: true, owner: RepoDetail.Owner(id: 0, login: "Test", avatarUrl: ""), description: "This is a fake repository.", fork: false, repoUrl: "URL", createdAt: "25/08/2021", updatedAt: "25/08/2021", size: 100, star: 3, language: "Swift", forkCount: 1, sub: 15)
    
    @Published var repoBranches = [RepoBranches(name: "Test1st", protected: false)]
    
    private func fetchRepoDetail() {
        let username = "johanln"
        guard let repoDetailUrl = URL(string: "https://api.github.com/repos/\(username)/\(self.repoName)") else {
            fatalError("Url is not correct.")
        }
        
        APIServices().fetchRepoDetail(url: repoDetailUrl) { repo in
            if let repo = repo {
                self.repoDetail = repo
            }
            
        }
    }
    
    private func fetchRepoBranches() {
        let username = "johanln"
        guard let repoBranchesUrl = URL(string: "https://api.github.com/repos/\(username)/\(self.repoName)/branches") else {
            fatalError("Url is not correct.")
        }

        APIServices().fetchRepoBranches(url: repoBranchesUrl) { branches in
            if let branches = branches {
                self.repoBranches = branches
            }
            
        }
    }
    
}
