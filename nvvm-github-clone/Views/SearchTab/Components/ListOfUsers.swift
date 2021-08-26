//
//  ListOfUsers.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import SwiftUI

struct ListOfUsers: View {
    
    var searchUsers: [SearchUsers.Item]

    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                ForEach(searchUsers) { user in
                    VStack(alignment: .leading, spacing: 12.0) {
                        HStack {
                            Image(systemName: "person.fill")
                                .data(url: URL(string: user.avatarUrl) ?? URL(string: "https://image.flaticon.com/icons/png/512/25/25231.png")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing: 10.0) {
                                NavigationLink(destination: Profile(username: user.login)) {
                                    Text(user.login)
                                        .font(.system(size: 18, weight: .bold))
                                        .foregroundColor(Color.clickableText)
                                }
                                Text(user.description ?? "No description.")
                                    .foregroundColor(Color.text)
                                    .font(.system(size: 12))
                                    .lineLimit(3)
                            }
                            .padding(.leading)
                        }
                        .padding([.top, .leading, .bottom])
                        Divider()
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ListOfUsers_Previews: PreviewProvider {
    static var previews: some View {
        ListOfUsers(searchUsers: [SearchUsers.Item(id: 1, login: "johanln", avatarUrl: "", description: "Fake description."), SearchUsers.Item(id: 2, login: "quemenerjeremy", avatarUrl: "", description: "Fake description.")])
    }
}
