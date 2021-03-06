//
//  Profile.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import SwiftUI

struct Profile: View {
    
    var username: String
    @State private var selected = 1
    @ObservedObject var viewModel = UserReposViewModel()
    @ObservedObject var userViewModel = UserInfoViewModel()
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                ProfileHeaderSummary(userInfo: userViewModel.userInfo)
                ProfileButtonNavigation(selected: $selected, numberOfRepos: viewModel.userRepos.count)
                    .padding(.vertical)
                if self.selected == 1 {
                    ForEach(viewModel.userRepos) { repo in
                        RepoCard(userRepo: repo)
                            .padding(10)
                    }
                } else if self.selected == 2 {
                    Divider()
                        .padding(.horizontal)
                    ForEach(viewModel.userRepos) { repo in
                        ProfileRepositories(userRepoInfo: repo)
                            .padding()
                        Divider()
                            .padding(.horizontal)
                    }
                } else if self.selected == 3 {
                    ProfileProjects()
                } else {
                    ProfilePackages()
                }
            }
        }
        .onAppear() {
            viewModel.fetchUserRepos(username: username)
            userViewModel.fetchUserInfo(username: username)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(username: "johanln")
    }
}
