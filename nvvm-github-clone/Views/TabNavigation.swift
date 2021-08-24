//
//  Home.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import SwiftUI

struct TabNavigation: View {

    @State private var tabSelection = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            NavigationView {
                Home(goToProfile: $tabSelection)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(0)
            NavigationView {
                Search()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
            .tabItem {
                Image(systemName: "network")
                Text("Search")
            }
            .tag(1)
            NavigationView {
                Profile()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
            .tabItem {
                Image(systemName: "person.circle.fill")
                Text("Profile")
            }
            .tag(2)
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = UIColor.baner
        }
        .accentColor(Color.clickableText)
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigation()
    }
}
