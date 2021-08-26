//
//  ListOfIssues.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import SwiftUI

struct ListOfIssues: View {
    
    var searchIssues: [SearchIssues.Item]
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                ForEach(searchIssues) { issue in
                    VStack(alignment: .leading, spacing: 12.0) {
                        Text(issue.title)
                            .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.clickableText)
                            .padding(.leading)
                        if let body = issue.body {
                            Text(body)
                                .foregroundColor(Color.text)
                                .font(.system(size: 12))
                                .padding(.leading)
                                .lineLimit(3)
                            }
                        HStack {
                            Text(issue.user.login)
                                .font(.system(size: 12))
                                .bold()
                                .foregroundColor(Color.stroke)
                            if issue.state == "open" {
                                Text("opened \(formatDate(stringDate: issue.createdAt))")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.stroke)
                            } else {
                                Text("closed")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.stroke)
                            }
                        }
                        .padding([.top, .leading, .bottom])
                        Divider()
                    }
                    .padding([.top, .leading, .trailing])
                }
            }
        }
    }
}

struct ListOfIssues_Previews: PreviewProvider {
    static var previews: some View {
        ListOfIssues(searchIssues: [SearchIssues.Item(id: 1, title: "Google", user: SearchIssues.Item.User(login: "johanln"), label: [SearchIssues.Item.Label(id: 1, name: "doing")], state: "open", createdAt: "2021-08-25T08:06:09Z", body: "Fake issue.")])
    }
}
