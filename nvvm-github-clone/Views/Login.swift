//
//  Login.swift
//  nvvm-github-clone
//
//  Created by Admin on 31/08/2021.
//

import SwiftUI

struct Login: View {
    
    @State private var text = ""
    @State private var isCommited = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.background.ignoresSafeArea()
                VStack {
                    Text("Log with a github account.")
                        .font(.system(size: 25.0, weight: .bold, design: .rounded))
                        .foregroundColor(Color.text)
                        .padding(.bottom, 25.0)
                    TextField("Github account...", text: $text, onCommit: {
                        isCommited.toggle()
                    })
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    ZStack {
                        RoundedRectangle(cornerRadius: 7.0)
                            .fill(Color.validation)
                            .frame(width: 132, height: 42)
                        RoundedRectangle(cornerRadius: 7.0)
                            .stroke(Color.green, lineWidth: 2)
                            .frame(width: 132, height: 42)
                        NavigationLink(destination: TabNavigation(githubAccount: text), isActive: $isCommited) {
                            Text("Submit")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                        .frame(width: 130, height: 40)
                    }
                    .padding(.top, 25.0)
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
