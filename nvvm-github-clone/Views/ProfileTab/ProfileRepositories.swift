//
//  PorfileRepositories.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import SwiftUI

struct ProfileRepositories: View {
    
    @State private var goToProfile = 0
    var userRepoInfo: UserRepos
    
    private func formatDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "fr_FR")
        dateFormatter.dateFormat = "yyyy-MM-dd"
            
        let date = dateFormatter.date(from: String(self.userRepoInfo.updatedAt.prefix(10))) ?? Date()
        
        if Int((Date().timeIntervalSince(date) / 86400)) > 1 {
            return "Updated " + String(Int((Date().timeIntervalSince(date) / 86400))) + " days ago."
        }
        return "Updated " + String(Int((Date().timeIntervalSince(date) / 86400))) + " day ago."
    }
        
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 15.0) {
                NavigationLink(destination: RepoDetailView(goToProfile: $goToProfile, repoName: userRepoInfo.name)) {
                    Text(userRepoInfo.fullName)
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                        .foregroundColor(Color.clickableText)
                }
                HStack {
                    Image(systemName: "circle.fill")
                        .foregroundColor(languageRepoColor(language: userRepoInfo.language ?? ""))
                    Text(userRepoInfo.language ?? "")
                        .font(.system(size: 12))
                    Text(self.formatDate())
                        .font(.system(size: 12))
                }
            }
            .padding(.leading, 10.0)
            Spacer()
            VStack {
                ZStack {
                    Color.card
                    HStack {
                        Image(systemName: "star")
                            .frame(width: 10, height: 10)
                        Text("Star")
                            .font(.system(size: 12))
                    }
                }
            }
            .frame(width: 70, height: 35)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.stroke, lineWidth: 2)
            )
            .cornerRadius(10)
            .padding(.trailing, 10.0)
        }
    }
}

struct ProfileRepositories_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRepositories(userRepoInfo: UserRepos(id: 0, name: "nil", fullName: "Repo", privateRepo: true, repoUrl: "nil", description: "nil", language: "C", updatedAt: "2020-05-04T09:37:18Z", owner: UserRepos.Owner(id: 0, login: "nil", avatarUrl: "nil")))
    }
}
