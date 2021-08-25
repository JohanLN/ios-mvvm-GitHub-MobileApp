//
//  ProfilePackages.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import SwiftUI

struct ProfilePackages: View {
    var body: some View {
        VStack {
            Text("Get started with GitHub Packages")
            Text("Safely publish packages, store your packages alongside your code, and share your packages privately with your team.")
            Text("Choose a registry")
            VStack(alignment: .leading) {
                HStack {
                    Image("DockerIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("Docker")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(Color.text)
                }
                Text("A software platform used for building applications based on containers — small and lightweight execution environments.")
                    .font(.system(size: 16))
                    .foregroundColor(Color.stroke)
                    .padding(.bottom)
                ZStack {
                    RoundedRectangle(cornerRadius: 7.0)
                        .fill(Color.background)
                        .frame(width: 112, height: 32)
                    RoundedRectangle(cornerRadius: 7.0)
                        .stroke(Color.stroke, lineWidth: 2)
                        .frame(width: 112, height: 32)
                    Button(action: {}) {
                        Text("Learn More")
                            .font(.system(size: 16))
                            .foregroundColor(Color.text)
                    }
                }
            }
            .padding(.horizontal)
            .frame(width: 350, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.stroke, lineWidth: 2)
            )
            .cornerRadius(10)
        
        
            VStack(alignment: .leading) {
                HStack {
                    Image("MavenIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("Apache Maven")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(Color.text)
                }
                Text("A default package manager used for the Java programming language and the Java runtime environment.")
                    .font(.system(size: 16))
                    .foregroundColor(Color.stroke)
                    .padding(.bottom)
                ZStack {
                    RoundedRectangle(cornerRadius: 7.0)
                        .fill(Color.background)
                        .frame(width: 112, height: 32)
                    RoundedRectangle(cornerRadius: 7.0)
                        .stroke(Color.stroke, lineWidth: 2)
                        .frame(width: 112, height: 32)
                    Button(action: {}) {
                        Text("Learn More")
                            .font(.system(size: 16))
                            .foregroundColor(Color.text)
                    }
                }
            }
            .padding(.horizontal)
            .frame(width: 350, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.stroke, lineWidth: 2)
            )
            .cornerRadius(10)

        
            VStack(alignment: .leading) {
                HStack {
                    Image("NuGetIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("NuGet")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(Color.text)
                }
                Text("A free and open source package manager used for the Microsoft development platforms including .NET.")
                    .font(.system(size: 16))
                    .foregroundColor(Color.stroke)
                    .padding(.bottom)
                ZStack {
                    RoundedRectangle(cornerRadius: 7.0)
                        .fill(Color.background)
                        .frame(width: 112, height: 32)
                    RoundedRectangle(cornerRadius: 7.0)
                        .stroke(Color.stroke, lineWidth: 2)
                        .frame(width: 112, height: 32)
                    Button(action: {}) {
                        Text("Learn More")
                            .font(.system(size: 16))
                            .foregroundColor(Color.text)
                    }
                }
            }
            .padding(.horizontal)
            .frame(width: 350, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.stroke, lineWidth: 2)
            )
            .cornerRadius(10)
        
       
            VStack(alignment: .leading) {
                HStack {
                    Image("RubyIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("RubyGems")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(Color.text)
                }
                Text("A standard format for distributing Ruby programs and libraries used for the Ruby programming language.")
                    .font(.system(size: 16))
                    .foregroundColor(Color.stroke)
                    .padding(.bottom)
                ZStack {
                    RoundedRectangle(cornerRadius: 7.0)
                        .fill(Color.background)
                        .frame(width: 112, height: 32)
                    RoundedRectangle(cornerRadius: 7.0)
                        .stroke(Color.stroke, lineWidth: 2)
                        .frame(width: 112, height: 32)
                    Button(action: {}) {
                        Text("Learn More")
                            .font(.system(size: 16))
                            .foregroundColor(Color.text)
                    }
                }
            }
            .padding(.horizontal)
            .frame(width: 350, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.stroke, lineWidth: 2)
            )
            .cornerRadius(10)
        
        
            VStack(alignment: .leading) {
                HStack {
                    Image("npmIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("npm")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(Color.text)
                }
                Text("A package manager for JavaScript, included with Node.js. npm makes it easy for developers to share and reuse code.")
                    .font(.system(size: 16))
                    .foregroundColor(Color.stroke)
                    .padding(.bottom)
                ZStack {
                    RoundedRectangle(cornerRadius: 7.0)
                        .fill(Color.background)
                        .frame(width: 112, height: 32)
                    RoundedRectangle(cornerRadius: 7.0)
                        .stroke(Color.stroke, lineWidth: 2)
                        .frame(width: 112, height: 32)
                    Button(action: {}) {
                        Text("Learn More")
                            .font(.system(size: 16))
                            .foregroundColor(Color.text)
                    }
                }
            }
            .padding(.horizontal)
            .frame(width: 350, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.stroke, lineWidth: 2)
            )
            .cornerRadius(10)

        
            VStack(alignment: .leading) {
                HStack {
                    Image("ContainersIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("Containers")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(Color.text)
                }
                Text("A single place for your team to manage Docker images and decide who can see and access your images.")
                    .font(.system(size: 16))
                    .foregroundColor(Color.stroke)
                    .padding(.bottom)
                ZStack {
                    RoundedRectangle(cornerRadius: 7.0)
                        .fill(Color.background)
                        .frame(width: 112, height: 32)
                    RoundedRectangle(cornerRadius: 7.0)
                        .stroke(Color.stroke, lineWidth: 2)
                        .frame(width: 112, height: 32)
                    Button(action: {}) {
                        Text("Learn More")
                            .font(.system(size: 16))
                            .foregroundColor(Color.text)
                    }
                }
            }
            .padding(.horizontal)
            .frame(width: 350, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.stroke, lineWidth: 2)
            )
            .cornerRadius(10)
        }
    }
}

struct ProfilePackages_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePackages()
    }
}
