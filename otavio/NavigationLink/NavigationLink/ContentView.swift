//
//  ContentView.swift
//  NavigationLink
//
//  Created by Student21 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var Sheet = false
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: NomeView()){
                    Text("Primeira Tela")
                }
                
                NavigationLink(destination: SecondView()){
                    Text("Segunda Tela")
                }
                
                Button(action: {
                    Sheet.toggle()
                }) {
                    Text("Terceira Tela")
                }
                .sheet(isPresented: $Sheet) {
                    VStack{
                        Text("Otavio Campos")
                        Text("HackaTruck")
                        Text("otavio.campos@ufu.br")
                    }
                }
            } .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

