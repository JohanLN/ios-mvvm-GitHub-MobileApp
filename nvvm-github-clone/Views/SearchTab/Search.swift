//
//  Search.swift
//  nvvm-github-clone
//
//  Created by Admin on 18/08/2021.
//

import SwiftUI

struct Search: View {
    
    @State private var selected = 1
    @State private var text = ""
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                SearchButtonNavigation(selected: $selected)
                    .padding(.bottom)
                SearchBar(selected: selected, text: $text)
            }
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
