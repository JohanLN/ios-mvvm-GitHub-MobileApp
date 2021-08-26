//
//  SearchUsersViewModel.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import Foundation

class SearchUsersViweModel: ObservableObject {
    
    @Published var searchUsers = SearchUsers(items: [SearchUsers.Item]())
    
    public func fetchSearchUsers(username: String) {
        guard let searchUsersUrl = URL(string: "https://api.github.com/search/users?q=\(username)&per_page=10") else {
            fatalError("Url is not correct.")
        }
        
        APIServices().fetchSearchUsers(url: searchUsersUrl) { [weak self] (user) in
            if let user = user {
                DispatchQueue.main.async {
                    self?.searchUsers = user
                }
            }
        }
    }
    
}
