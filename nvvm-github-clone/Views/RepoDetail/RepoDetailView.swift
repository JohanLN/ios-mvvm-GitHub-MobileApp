//
//  RepoDetail.swift
//  nvvm-github-clone
//
//  Created by Admin on 23/08/2021.
//

import SwiftUI

struct RepoDetailView: View {
    
    @Binding var goToProfile: Int
    @ObservedObject var viewModel: RepoDetailViewModel
    
    init(goToProfile: Binding<Int>, repoName: String) {
        self.viewModel = RepoDetailViewModel(repoName: repoName)
        self._goToProfile = goToProfile
    }
    
    var body: some View {
        VStack {
            ZStack {
                Color.background.ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    HStack {
                        VStack(alignment: .leading) {
                            RepoInfos(goToProfile: $goToProfile, repoDetail: viewModel.repoDetail)
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
        RepoDetailView(goToProfile: .constant(0), repoName: "Mobile-Github")
    }
}

