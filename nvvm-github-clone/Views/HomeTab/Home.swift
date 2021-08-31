//
//  Home.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject var viewModel = UserReposViewModel()
    var githubAccount: String
    
    var body: some View {
        
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                VStack {
                    
                    HStack {
                        Text("Repositories")
                            .font(.system(size: 30.0, weight: .bold, design: .rounded))
                            .padding(.leading, 20.0)
                        Spacer()
                    }
                    .padding(.top)
                    
                    UserReposCard(userRepos: viewModel.userRepos)
                    
                    HStack {
                        Text("Recent activity")
                            .font(.system(size: 30.0, weight: .bold, design: .rounded))
                            .padding(.leading, 20.0)
                        Spacer()
                    }
                    .padding(.top)
                    
                    UserEventCard()
                }
            }
        }
        .onAppear() {
            viewModel.fetchUserRepos(username: githubAccount)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(githubAccount: "JohanLN")
    }
}
