//
//  ContentView.swift
//  Spotify
//
//  Created by Student21 on 01/08/23.
//


/**
 
 */

import SwiftUI

struct ContentView: View {
    
    @State private var filter = ""
    
    let songs =  [
        Song (id: 1, name: "Thank you, next", artist: "Ariana Grande", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/03/c96c7a2-thank-u-next-ariana-album.jpg"),
        Song (id: 2, name: "Madagascar", artist: "Edy Lemond", capa: "https://i.scdn.co/image/ab67616d0000b27303ce1b8ba51780ec976f198c"),
        Song (id: 3, name: "Ocean Eyes", artist: "Billie Eilish", capa: "https://m.media-amazon.com/images/I/61PKiSVo6HL._UXNaN_FMjpg_QL85_.jpg"),
        Song (id: 4, name: "Shake It Bololo", artist: "MC Bin Laden", capa: "https://i.scdn.co/image/ab67706c0000da844799cf3d2c3e813f072d8fcb"),
        Song (id: 5, name: "Poze do Rodo Anos 80", artist: "Poze Do Rodo", capa: "https://i.ytimg.com/vi/WZIGwN-5Ioo/hqdefault.jpg"),
        Song (id: 6, name: "Idiota", artist: "Jão", capa: "https://i0.wp.com/br.nacaodamusica.com/wp-content/uploads/2021/10/jao-2021.jpg")]
    
    var body: some View {
        
        NavigationStack{
            ZStack{ // Gradiente de fundo
                Rectangle()
                    .ignoresSafeArea()
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                
                VStack { // Capa
                    ScrollView{ //tela ScrollView
                        Image("capa")
                            .resizable()
                            .frame(width: 250, height: 230)
                        
                        Text("Corosso")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .offset(x: -100, y: 15)
                        
                        HStack{ // dono do album
                            Image("truck")
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                            Text("Alguém me ajuda")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                            Spacer()
                        }.offset(x: 10)
                        
                        VStack{ //lista de musicas
                            ForEach(songs) { song in
                                NavigationLink(destination: MusicView(song: song)){ //link
                                    HStack{
                                        AsyncImage(url: URL(string: song.capa)) {
                                            img_song in
                                            img_song.resizable().frame(width: 60, height: 60)
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        VStack{
                                            Text(song.name).foregroundColor(.white).font(.system(size: 15))
                                            
                                            Text(song.artist).foregroundColor(.white).font(.system(size: 15))
                                        }
                                        Text("                                             ")
                                        Image(systemName: "ellipsis")
                                            .foregroundStyle(.white)
                                        Spacer()
                                    } //HStack
                                }//NavigationLink
                            } //ForEach
                        } //VStack da lista de musicas
                    } //ScrollView
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            Image(systemName: "1.square")
                                .foregroundStyle(.white)
                                .font(.system(size: 80))
                            Image(systemName: "2.square")
                                .foregroundStyle(.white)
                                .font(.system(size: 80))
                            Image(systemName: "3.square")
                                .foregroundStyle(.white)
                                .font(.system(size: 80))
                            Image(systemName: "4.square")
                                .foregroundStyle(.white)
                                .font(.system(size: 80))
                        }
                    }
                } //VStack inicial
                .padding()
            } //ZStack inicial
        }
        .searchable(text: $filter, prompt: "Buscar")
        .foregroundColor(.black)
        .accentColor(.white)
        //NavigationStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
