//
//  RepoCards.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import SwiftUI

struct RepoCard: View {
    
    @State private var goToProfile = 0
    var userRepo: UserRepos
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Color.card
                HStack {
                    VStack(alignment: .leading, spacing: 15.0) {
                        NavigationLink(destination: RepoDetailView(goToProfile: $goToProfile, repoName: userRepo.name)) {
                            Text(userRepo.fullName)
                                .font(.system(size: 15.0, weight: .bold))
                                .foregroundColor(Color.clickableText)
                        }
                        Text(userRepo.description ?? "No description")
                            .foregroundColor(Color.stroke)
                            .font(.system(size: 12.0))
                        HStack(alignment: .center) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(languageRepoColor(language: userRepo.language ?? ""))
                            Text(userRepo.language ?? "")
                                .padding(.vertical)
                                .foregroundColor(Color.stroke)
                                .font(.system(size: 12))
                        }
                    }
                    .padding(30)
                    Spacer()
                }
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

struct RepoCard_Previews: PreviewProvider {
    static var previews: some View {
        RepoCard(userRepo: UserRepos(id: 0, name: "Name", fullName: "FullName", privateRepo: true, repoUrl: "url", description: "Description", language: "HTML", updatedAt: "2020-05-04T09:37:18Z", owner: UserRepos.Owner(id: 0, login: "Moi", avatarUrl: "url")))
    }
}
