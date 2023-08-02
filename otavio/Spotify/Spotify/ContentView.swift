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
    
    let songs =  [
        Song (id: 1, name: "test1", artist: "test", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/03/c96c7a2-thank-u-next-ariana-album.jpg"),
                  Song (id: 2, name: "test2", artist: "test", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/03/c96c7a2-thank-u-next-ariana-album.jpg"),
                 Song (id: 3, name: "test3", artist: "test", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/03/c96c7a2-thank-u-next-ariana-album.jpg")]
    
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
                                HStack{
                                    AsyncImage(url: URL(string: song.capa)) {
                                        img_song in
                                        img_song.resizable().frame(width: 60, height: 60)
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    
                                    NavigationLink(destination: Text(song.name)){ //link
                                        VStack{
                                            Text(song.name).foregroundColor(.white).font(.system(size: 20))
                                            
                                            Text(song.artist).foregroundColor(.white).font(.system(size: 20))
                                        }
                                        Spacer()
                                    } //NavgationLink
                                } //HStack
                            } //ForEach
                        } //VStack da lista de musicas
                    } //ScrollView
                } //VStack inicial
                .padding()
            } //ZStack inicial
        } //NavigationStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
