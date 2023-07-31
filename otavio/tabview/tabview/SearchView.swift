//
//  SearchView.swift
//  tabview
//
//  Created by Student21 on 31/07/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .scaledToFit()
                .foregroundColor(.blue)
                .frame(width: 300)
            Text("Hello HackaTruck")
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
