//
//  ContentView.swift
//  api
//
// Não faço ideia do que ta acontecendo aqui
// PersonView com defeito
//  Created by Student21 on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
                ZStack{
                    Rectangle()
                    LinearGradient(gradient: Gradient(colors: [.orange, .black]), startPoint: .top, endPoint: .bottom)
                    
                    ScrollView{
                        ForEach(viewModel.jogadores) { j in
                            NavigationLink(destination: PersonView()){
                                HStack {
                                    
                                }
                            }
                        }
                    }
                } //ZStack
            } //VStack primária
        } //NavigationStack
        .onAppear(){
            viewModel.fetch()
        }
        .ignoresSafeArea()
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
