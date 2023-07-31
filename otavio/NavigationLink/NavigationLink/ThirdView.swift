//
//  ThirdView.swift
//  NavigationLink
//
//  Created by Student21 on 31/07/23.
//

import SwiftUI

struct ThirdView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Text("Otavio Campos")
            Text("HackaTruck")
            Text("otavio.campos@ufu.br")
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
