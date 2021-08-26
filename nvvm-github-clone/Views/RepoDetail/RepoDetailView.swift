//
//  RepoDetail.swift
//  nvvm-github-clone
//
//  Created by Admin on 23/08/2021.
//

import SwiftUI

struct RepoDetailView: View {
    
    @ObservedObject var viewModel: RepoDetailViewModel
    
    init(repoName: String) {
        self.viewModel = RepoDetailViewModel(repoName: repoName)
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
    }
}

struct RepoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailView(repoName: "Mobile-Github")
    }
}

