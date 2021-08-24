//
//  RepoInfos.swift
//  nvvm-github-clone
//
//  Created by Admin on 24/08/2021.
//

import SwiftUI

struct RepoInfos: View {
    
    @Binding var goToProfile: Int
    var repoDetail: RepoDetail
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "book.closed")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.stroke)
                    .frame(width: 20, height: 20)
                Button(action: {
                    self.goToProfile = 2
                }) {
                    Text(repoDetail.owner.login)
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(Color.clickableText)
                }
                Text("/")
                    .font(.system(size: 22))
                    .bold()
                    .foregroundColor(Color.stroke)
                Text(repoDetail.name)
                    .font(.system(size: 22))
                    .bold()
                    .foregroundColor(Color.clickableText)
            }
            .padding(.bottom)
            Text(repoDetail.description ?? "No description available.")
                .padding(.vertical)
            HStack {
                Image(systemName: "star")
                    .foregroundColor(Color.stroke)
                Text("\(repoDetail.star) stars")
                Image(systemName: "arrow.triangle.branch")
                    .foregroundColor(Color.stroke)
                Text("\(repoDetail.forkCount) forks")
            }
            .padding(.vertical)
        }
        
    }
}

struct RepoInfos_Previews: PreviewProvider {
    static var previews: some View {
        RepoInfos(goToProfile: .constant(0), repoDetail: RepoDetail(id: 0, name: "", fullName: "", privateRepo: false, owner: RepoDetail.Owner(id: 0, login: "", avatarUrl: ""), description: "", fork: true, repoUrl: "", createdAt: "", updatedAt: "", size: 0, star: 0, language: "", forkCount: 0, sub: 0))
    }
}
