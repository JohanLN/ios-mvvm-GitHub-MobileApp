//
//  RepoBranches.swift
//  nvvm-github-clone
//
//  Created by Admin on 24/08/2021.
//

import SwiftUI

struct RepoBranchesComponent: View {
    
    var repoBranches: [RepoBranches]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Branches")
                .font(.system(size: 22.0, weight: .bold, design: .rounded))
                .padding(.bottom)
            VStack {
                ZStack {
                    Color.card
                    VStack(alignment: .leading) {
                        ForEach(0 ..< repoBranches.count) { i in
                            HStack {
                                if repoBranches[i].protected {
                                    Image(systemName: "lock")
                                } else {
                                    Image(systemName: "lock.open")
                                }
                                Text(repoBranches[i].name)
                                    .font(.system(size: 15.0))
                            }
                            .padding(.vertical)
                        }
                    }
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
}

struct RepoBranchesComponent_Previews: PreviewProvider {
    static var previews: some View {
        RepoBranchesComponent(repoBranches: [RepoBranches(name: "master", protected: false)])
    }
}
