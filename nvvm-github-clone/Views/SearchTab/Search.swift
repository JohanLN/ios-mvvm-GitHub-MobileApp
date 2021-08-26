//
//  Search.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import SwiftUI

struct Search: View {
    
    @ObservedObject var repoViewModel = SearchReposViewModel()
    @ObservedObject var userViewModel = SearchUsersViweModel()
    @ObservedObject var issueViewModel = SearchIssuesViewModel()
    @State private var selected = 1
    @State private var text = ""
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                SearchButtonNavigation(selected: $selected)
                    .padding(.vertical)
                SearchBar(searchReposViewModel: repoViewModel, searchUsersViewModel: userViewModel, searchIssuesViewModel: issueViewModel, selected: selected, text: $text)
                if selected == 1 && repoViewModel.searchResuts.items.count > 0 {
                    ListOfRepos(searchRepos: repoViewModel.searchResuts.items)
                } else if selected == 2 && userViewModel.searchUsers.items.count > 0 {
                    ListOfUsers(searchUsers: userViewModel.searchUsers.items)
                } else if selected == 3 && issueViewModel.searchIssues.items.count > 0 {
                    ListOfIssues(searchIssues: issueViewModel.searchIssues.items)
                }
            }
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
