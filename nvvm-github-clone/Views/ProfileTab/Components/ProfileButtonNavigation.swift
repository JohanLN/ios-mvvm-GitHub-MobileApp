//
//  ProfileButtonNavigation.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import SwiftUI

struct ProfileButtonNavigation: View {
    
    @Binding var selected: Int
    var numberOfRepos: Int
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button(action: {
                    self.selected = 1
                }) {
                    VStack {
                        Text("Overview")
                            .foregroundColor(self.selected == 1 ? Color.clickableText : Color.text)
                            .fontWeight(self.selected == 1 ? .bold : .none)
                            .padding([.top, .bottom], 5)
                            .overlay(self.selected == 1 ?
                                Rectangle()
                                        .frame(width: 130, height: 2)
                                    .foregroundColor(.blue) : nil,
                                alignment: .bottom
                            )
                    }
                }
                .frame(width: 140)
                Button(action: {
                    self.selected = 2
                }) {
                    VStack {
                        Text("Repositories \(numberOfRepos)")
                            .foregroundColor(self.selected == 2 ? Color.clickableText : Color.text)
                            .fontWeight(self.selected == 2 ? .bold : .none)
                            .padding([.top, .bottom], 5)
                            .overlay(self.selected == 2 ?
                                Rectangle()
                                    .frame(width: 130, height: 2)
                                    .foregroundColor(.blue) : nil,
                                alignment: .bottom
                            )
                    }
                }
                .frame(width: 140)
                Button(action: {
                    self.selected = 3
                }) {
                    VStack {
                        Text("Projects")
                            .foregroundColor(self.selected == 3 ? Color.clickableText : Color.text)
                            .fontWeight(self.selected == 3 ? .bold : .none)
                            .padding([.top, .bottom], 5)
                            .overlay(self.selected == 3 ?
                                Rectangle()
                                        .frame(width: 130, height: 2)
                                    .foregroundColor(.blue) : nil,
                                alignment: .bottom
                            )
                    }
                }
                .frame(width: 140)
                Button(action: {
                    self.selected = 4
                }) {
                    VStack {
                        Text("Packages")
                            .foregroundColor(self.selected == 4 ? Color.clickableText : Color.text)
                            .fontWeight(self.selected == 4 ? .bold : .none)
                            .padding([.top, .bottom], 5)
                            .overlay(self.selected == 4 ?
                                Rectangle()
                                        .frame(width: 130, height: 2)
                                    .foregroundColor(.blue) : nil,
                                alignment: .bottom
                            )
                    }
                }
                .frame(width: 140)
            }
        }    }
}

struct ProfileButtonNavigation_Previews: PreviewProvider {
    var selected = 1
    static var previews: some View {
        ProfileButtonNavigation(selected: .constant(1), numberOfRepos: 10)
    }
}
