//
//  RepoDetail.swift
//  nvvm-github-clone
//
//  Created by Admin on 23/08/2021.
//

import SwiftUI

struct RepoDetailView: View {
    
    @ObservedObject var viewModel: RepoDetailViewModel
    var repoName: String
    var username: String
    
    init(repoName: String, username: String) {
        self.viewModel = RepoDetailViewModel()
        self.repoName = repoName
        self.username = username
    }
    
    var body: some View {
        VStack {
            ZStack {
                Color.background.ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    HStack {
                        VStack(alignment: .leading) {
                            RepoInfos(repoDetail: viewModel.repoDetail)
                            RepoBranchesComponent(repoBranches: viewModel.repoBranches)
                        }
                        .padding(.leading)
                    }
                }
            }
        }
        .onAppear() {
            viewModel.fetchRepoDetail(username: username, repoName: repoName)
        }
    }
}

struct RepoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailView(repoName: "Mobile-Github", username: "JohanLn")
    }
}

