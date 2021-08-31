//
//  GithubCard.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import SwiftUI

struct UserReposCard: View {

    var userRepos: [UserRepos]
    
    var body: some View {
        VStack {
            ZStack {
                Color.card
                VStack(alignment: .leading, spacing: 15.0) {
                    ForEach(userRepos) { repo in
                        NavigationLink(destination: RepoDetailView(repoName: repo.name, username: repo.owner.login)) {
                            HStack {
                                Image(systemName: "book.closed")
                                    .foregroundColor(Color.stroke)
                                Text(repo.fullName)
                                    .font(.system(size: 15, weight: .bold))
                                    .foregroundColor(Color.clickableText)
                            }
                        }
                    }
                }
                .padding(.vertical)
            }
        }
        .frame(width: 350)
        .overlay(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color.stroke, lineWidth: 2)
        )
        .cornerRadius(10)
    }
}

struct UserReposCard_Previews: PreviewProvider {
    static var previews: some View {
        UserReposCard(userRepos: [UserRepos(id: 0, name: "a repo", fullName: "a long repo", privateRepo: false, repoUrl: "url", description: "Description", language: "HTML", updatedAt: "2020-05-04T09:37:18Z", owner: UserRepos.Owner(id: 0, login: "JohnDoe", avatarUrl: "avatarUrl")), UserRepos(id: 0, name: "a repo", fullName: "a long repo", privateRepo: false, repoUrl: "url", description: "Description", language: "HTML", updatedAt: "2020-05-04T09:37:18Z", owner: UserRepos.Owner(id: 0, login: "JohnDoe", avatarUrl: "avatarUrl"))])
    }
}
