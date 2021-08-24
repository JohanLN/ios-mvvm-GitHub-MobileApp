//
//  ClickableCard.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import SwiftUI

struct ClickableCard: View {
   
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        VStack {
            ZStack {
                Color.card
                Text("Hello")
            }
        }
        .frame(width: width, height: height)
        .overlay(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color.stroke, lineWidth: 1)
        )
        .cornerRadius(10)
    }
}

struct ClickableCard_Previews: PreviewProvider {
    static var previews: some View {
        ClickableCard(width: 300.0, height: 200.0)
    }
}
