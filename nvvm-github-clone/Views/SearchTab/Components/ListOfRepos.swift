//
//  ListOfResults.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import SwiftUI

struct ListOfRepos: View {
    
    var searchRepos: [SearchRepos.Item]
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                ForEach(searchRepos) { repo in
                    VStack(alignment: .leading, spacing: 12.0) {
                        HStack {
                            Image(systemName: "book.closed")
                                .foregroundColor(Color.stroke)
                            NavigationLink(destination: RepoDetailView(repoName: repo.name)) {
                                Text(repo.fullName)
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color.clickableText)
                            }
                        }
                        .padding(.top)
                        Text(repo.description ?? "No description.")
                            .padding(.leading, 25.0)
                            .foregroundColor(Color.text)
                            .font(.system(size: 12))
                            .lineLimit(3)
                        HStack {
                            Image(systemName: "star")
                                .foregroundColor(Color.stroke)
                            Text("\(repo.stars)")
                                .font(.system(size: 12))
                                .foregroundColor(Color.stroke)
                                .lineLimit(1)
                            Image(systemName: "circle.fill")
                                .foregroundColor(languageRepoColor(language: repo.language ?? ""))
                            Text(repo.language ?? "")
                                .font(.system(size: 12))
                                .foregroundColor(Color.stroke)
                            Text(repo.license?.name ?? "No License")
                                .font(.system(size: 12))
                                .foregroundColor(Color.stroke)
                                .lineLimit(1)
                        }
                        .padding(.leading, 24)
                        Text("Updated " + formatDate(stringDate: repo.updatedAt))
                            .font(.system(size: 12))
                            .foregroundColor(Color.stroke)
                            .lineLimit(1)
                            .padding(.leading, 24)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 10.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                }
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct ListOfRepos_Previews: PreviewProvider {
    static var previews: some View {
        ListOfRepos(searchRepos: [SearchRepos.Item(id: 1, name: "Test1st", fullName: "Test/Test1st", description: "Fake description.", repoUrl: "Url", updatedAt: "2017-11-07T15:33:44Z", stars: 12, language: "Swift", license: SearchRepos.Item.License(name: "MIT License")), SearchRepos.Item(id: 1, name: "Test1st", fullName: "Test/Test1st", description: "Fake description.", repoUrl: "Url", updatedAt: "2017-11-07T15:33:44Z", stars: 12, language: "Swift", license: SearchRepos.Item.License(name: "MIT License"))])
    }
}
