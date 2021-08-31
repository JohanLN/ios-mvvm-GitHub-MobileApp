//
//  ProfileHeaderSummary.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import SwiftUI

struct ProfileHeaderSummary: View {

    var userInfo: UserInfo
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person.fill")
                    .data(url: URL(string: userInfo.avatarUrl) ?? URL(string: "https://image.flaticon.com/icons/png/512/25/25231.png")!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .padding()
                Text(userInfo.login)
                    .foregroundColor(Color.stroke)
                    .font(.system(size: 22, design: .rounded))
                Spacer()
            }
            Text(userInfo.bio ?? "No bio.")
                .padding()
            HStack {
                Image(systemName: "person.2")
                    .foregroundColor(Color.stroke)
                    .padding(.leading)
                Text("\(userInfo.followers)")
                Text("followers")
                    .foregroundColor(Color.stroke)
                Image(systemName: "person.badge.plus")
                    .foregroundColor(Color.stroke)
                    .padding(.leading)
                Text("\(userInfo.following)")
                Text("following")
                    .foregroundColor(Color.stroke)
                Image(systemName: "star")
                    .padding(.leading)
                    .foregroundColor(Color.stroke)
                Text("0")
            }
        }
    }
}

struct ProfileHeaderSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderSummary(userInfo: UserInfo(login: "Test", avatarUrl: "", bio: "Fake account.", followers: 12, following: 21, createdAt: "2017-11-07T15:33:44Z"))
    }
}
