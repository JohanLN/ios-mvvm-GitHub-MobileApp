//
//  UserEventCard.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import SwiftUI

struct UserEventCard: View {
    var body: some View {
        VStack {
            ZStack {
                Color.card
                VStack(alignment: .leading, spacing: 15.0) {
                    Text("When you take actions across GitHub, we’ll provide links to that activity here.")
                        .font(.system(size: 15))
                        .padding()
                }
            }
        }
        .frame(width: 350, height: 80)
        .overlay(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color.stroke, lineWidth: 2)
        )
        .cornerRadius(10)
    }
}

struct UserEventCard_Previews: PreviewProvider {
    static var previews: some View {
        UserEventCard()
    }
}
