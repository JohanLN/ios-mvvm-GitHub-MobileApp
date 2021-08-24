//
//  Search.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import SwiftUI

struct Search: View {
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            Text("Search Tab.")
                .font(.system(size: 30.0, weight: .bold, design: .rounded))
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
