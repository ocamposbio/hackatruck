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
    
    //    @State private var searchText = "" //pesquisa
    //
    //    var filterPlayers: [player.player_name]{
    //        if searchText.isEmpty{
    //            return jogador
    //        } else{
    //            return jogador.filter{
    //                $0.name.localizedCaseInsensitiveContains(searchText)
    //            }
    //        }
    //    }
    
    var body: some View {
        NavigationStack{
                VStack {
                    Image("nba")
                        .resizable()
                        .frame(width: 100, height: 50)
                        .offset(x: -120)
                    Text("Stats")
                        .offset(y: -60)
                        .font(Font.system(size: 46, weight: .bold))
                        .ignoresSafeArea()
                    Text("Select the player to see more info")
                        .font(Font.system(size: 22, weight: .bold))
                        .offset(y: -30)
                    
                    //                Text("Procurando por \(searchText)")
                    //                    .searchable(text: $searchText)
                    
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .top, endPoint: .bottom)
                            .ignoresSafeArea()
                        
                        ScrollView{
                            
                            ForEach(viewModel.jogadores) { jogador in
                                NavigationLink( destination: PersonView(player: jogador)){
                                    HStack {
                                        Text(jogador.player_name!)
                                            .foregroundColor(.black)
                                            .font(.title2)
                                    } //HStack
                                }//NavigationLink
                            } //ForEach
                        } //Scroll View
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
