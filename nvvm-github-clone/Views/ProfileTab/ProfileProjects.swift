//
//  ProfileProjects.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import SwiftUI

struct ProfileProjects: View {
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Color.card
                    HStack {
                        Image(systemName: "filemenu.and.selection")
                            .foregroundColor(Color.text)
                            .padding(.leading)
                        Text("Open")
                            .foregroundColor(Color.text)
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.stroke)
                        Text("Closed")
                            .foregroundColor(Color.stroke)
                        Spacer()
                        Button(action: {}) {
                            
                        Text("Sort")
                            .foregroundColor(Color.stroke)
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .foregroundColor(Color.stroke)
                            .frame(width: 8, height: 4)
                            .scaledToFit()
                        }
                        .padding(.trailing)
                    }
                }
                .frame(height: 70)
                Text("You don't have any projects yet.")
                    .font(.system(size: 22))
                    .bold()
                    .multilineTextAlignment(.center)
                    
                    .padding(.vertical)
                ZStack {
                    RoundedRectangle(cornerRadius: 7.0)
                        .fill(Color.validation)
                        .frame(width: 132, height: 42)
                    RoundedRectangle(cornerRadius: 7.0)
                        .stroke(Color.green, lineWidth: 2)
                        .frame(width: 132, height: 42)
                    Button(action: {}) {
                        Text("New project")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                    .frame(width: 130, height: 40)
                }
                .padding(.vertical)
                Button(action: {}) {
                    Text("Learn More")
                }
                .padding(.vertical)
            }
        }
        .frame(width: 350)
        .overlay(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color.stroke, lineWidth: 2)
        )
        .cornerRadius(10)
    }
}

struct ProfileProjects_Previews: PreviewProvider {
    static var previews: some View {
        ProfileProjects()
            .preferredColorScheme(.dark)
    }
}
