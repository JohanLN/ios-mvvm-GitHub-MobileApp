//
//  SearchIssuesViewModel.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import Foundation

class SearchIssuesViewModel: ObservableObject {
    
    @Published var searchIssues = SearchIssues(items: [SearchIssues.Item]())

    public func fetchSearchIssues(issueName: String) {
            guard let searchIssuesUrl = URL(string: "https://api.github.com/search/issues?q=\(issueName)&per_page=10") else {
            fatalError("Url is not correct.")
        }
        
        APIServices().fetchSearchIssues(url: searchIssuesUrl) { [weak self] (issue) in
            if let issue = issue {
                DispatchQueue.main.async {
                    self?.searchIssues = issue
                }
            }
        }
    }
}
