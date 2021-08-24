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

    
    @Published var repoDetail = RepoDetail(id: 0, name: "", fullName: "", privateRepo: false, owner: RepoDetail.Owner(id: 0, login: "", avatarUrl: ""), description: "", fork: false, repoUrl: "", createdAt: "", updatedAt: "", size: 0, star: 0, language: "", forkCount: 0, sub: 0)
    
    @Published var repoBranches = [RepoBranches]()
    
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
        let username = "quemenerjeremy"
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
