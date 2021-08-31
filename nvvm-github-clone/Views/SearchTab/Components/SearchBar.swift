//
//  SearchBar.swift
//  nvvm-github-clone
//
//  Created by Admin on 25/08/2021.
//

import SwiftUI

struct SearchBar: View {
    
    var searchReposViewModel: SearchReposViewModel
    var searchUsersViewModel: SearchUsersViweModel
    var searchIssuesViewModel: SearchIssuesViewModel
    var selected: Int
    @Binding var text: String
    
    private func selectTypeOfSearch() -> String {
        if self.selected == 1 {
            return "repositories"
        } else if self.selected == 2 {
            return "user"
        } else {
            return "issues"
        }
    }
    
    var body: some View {
        VStack {
            ZStack {
                TextField("Search for \(selectTypeOfSearch())...", text: $text, onCommit: {
                    if self.selected == 1 {
                        searchReposViewModel.fetchSearchRepos(repoName: text)
                    } else if self.selected == 2 {
                        searchUsersViewModel.fetchSearchUsers(username: text)
                    } else {
                        searchIssuesViewModel.fetchSearchIssues(issueName: text)
                    }
                })
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                Image(systemName: "magnifyingglass")
                    .padding(.trailing, 320)
                if self.text.count > 0 {
                    Button(action: {
                        self.text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(Color.stroke)
                    }
                    .padding(.leading, 320)
                }
            }
        }
        .padding([.top, .leading, .trailing])
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchReposViewModel: SearchReposViewModel(), searchUsersViewModel: SearchUsersViweModel(), searchIssuesViewModel: SearchIssuesViewModel(), selected: 1, text: .constant("Test"))
    }
}
