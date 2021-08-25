//
//  SearchButtonNavigation.swift
//  nvvm-github-clone
//
//  Created by Admin on 25/08/2021.
//

import SwiftUI

struct SearchButtonNavigation: View {

    @Binding var selected: Int
    @State private var selectedButton = 1

    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button(action: {
                    self.selectedButton = 1
                    self.selected = self.selectedButton
                }) {
                    VStack {
                        Text("Repositories")
                            .foregroundColor(self.selectedButton == 1 ? Color.clickableText : Color.text)
                            .fontWeight(self.selectedButton == 1 ? .bold : .none)
                            .padding([.top, .bottom], 5)
                            .overlay(self.selectedButton == 1 ?
                                Rectangle()
                                        .frame(width: 130, height: 2)
                                    .foregroundColor(.blue) : nil,
                                alignment: .bottom
                            )
                    }
                    .frame(width: 140)
                }
                Button(action: {
                    self.selectedButton = 2
                    self.selected = self.selectedButton
                }) {
                    VStack {
                        Text("User")
                            .foregroundColor(self.selectedButton == 2 ? Color.clickableText : Color.text)
                            .fontWeight(self.selectedButton == 2 ? .bold : .none)
                            .padding([.top, .bottom], 5)
                            .overlay(self.selectedButton == 2 ?
                                Rectangle()
                                        .frame(width: 130, height: 2)
                                    .foregroundColor(.blue) : nil,
                                alignment: .bottom
                            )
                    }
                    .frame(width: 140)
                }
                Button(action: {
                    self.selectedButton = 3
                    self.selected = self.selectedButton
                }) {
                    VStack {
                        Text("Issues")
                            .foregroundColor(self.selected == 3 ? Color.clickableText : Color.text)
                            .fontWeight(self.selectedButton == 3 ? .bold : .none)
                            .padding([.top, .bottom], 5)
                            .overlay(self.selectedButton == 3 ?
                                Rectangle()
                                        .frame(width: 130, height: 2)
                                    .foregroundColor(.blue) : nil,
                                alignment: .bottom
                            )
                    }
                    .frame(width: 140)
                }
            }
        }
    }
}

struct SearchButtonNavigation_Previews: PreviewProvider {
    static var previews: some View {
        SearchButtonNavigation(selected: .constant(1))
    }
}
