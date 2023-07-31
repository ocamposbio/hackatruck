//
//  QuartaView.swift
//  NavigationLink
//
//  Created by Student21 on 31/07/23.
//

import SwiftUI

struct QuartaView: View {
    var pName : String
    
    var body: some View {
            Text("Hello, \(pName)!")
    }
}

struct QuartaView_Previews: PreviewProvider {
    static var previews: some View {
        QuartaView(pName: "agora vai")
    }
}
