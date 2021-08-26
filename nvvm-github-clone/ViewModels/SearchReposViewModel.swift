//
//  SearchReposViewModel.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import Foundation

class SearchReposViewModel: ObservableObject {
    
    @Published var searchResuts = SearchRepos(items: [SearchRepos.Item]())
    
    public func fetchSearchRepos(repoName: String) {
        guard let searchReposUrl = URL(string: "https://api.github.com/search/repositories?q=\(repoName)&per_page=10") else {
            fatalError("Url is not correct.")
        }
        
        APIServices().fetchSearchRepos(url: searchReposUrl) { [weak self] (repo) in
            if let repo = repo {
                DispatchQueue.main.async {
                    self?.searchResuts = repo
                }
            }
        }
    }
}
