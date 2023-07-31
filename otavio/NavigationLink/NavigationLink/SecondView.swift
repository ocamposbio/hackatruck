//
//  SecondView.swift
//  NavigationLink
//
//  Created by Student21 on 31/07/23.
//

import SwiftUI

struct SecondView: View {
    @State var name: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Digite seu nome", text: $name).foregroundColor(.black)
                
                Text("Estamos percorrendo um caminho, \(name)!")
                
                NavigationLink(destination: QuartaView(pName: name)){
                    Text("Acessar Tela")
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
