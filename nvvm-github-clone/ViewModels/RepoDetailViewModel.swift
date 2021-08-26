//
//  RepoDetailViewModel.swift
//  nvvm-github-clone
//
//  Created by Admin on 23/08/2021.
//

import Foundation

class RepoDetailViewModel: ObservableObject {
    
    init(repoName: String) {
        fetchRepoDetail(repoName: repoName)
    }
    
    @Published var repoDetail = RepoDetail(id: 0, name: "Test1st", fullName: "Test/Test1st", privateRepo: true, owner: RepoDetail.Owner(id: 0, login: "Test", avatarUrl: ""), description: "This is a fake repository.", fork: false, repoUrl: "URL", createdAt: "2017-11-07T15:33:44Z", updatedAt: "2017-11-07T15:33:44Z", size: 100, star: 3, language: "Swift", forkCount: 1, sub: 15)
    
    @Published var repoBranches = [RepoBranches(name: "Test1st", protected: false)]
    
    public func fetchRepoDetail(username: String = "johanln", repoName: String) {
        guard let repoDetailUrl = URL(string: "https://api.github.com/repos/\(username)/\(repoName)") else {
            fatalError("Url is not correct.")
        }
        
        APIServices().fetchRepoDetail(url: repoDetailUrl) { [weak self] (repo) in
            if let repo = repo {
                DispatchQueue.main.async {
                    self?.repoDetail = repo
                }
            }
            
        }
        
        self.fetchRepoBranches(repoName: repoName)
    }
    
    private func fetchRepoBranches(username: String = "johanln", repoName: String) {
        guard let repoBranchesUrl = URL(string: "https://api.github.com/repos/\(username)/\(repoName)/branches") else {
            fatalError("Url is not correct.")
        }

        APIServices().fetchRepoBranches(url: repoBranchesUrl) { [weak self] (branches) in
            if let branches = branches {
                DispatchQueue.main.async {
                    self?.repoBranches = branches
                }
            }
            
        }
    }
    
}
