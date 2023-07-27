//
//  ContentView.swift
//  otavio_d2
//
//  Created by Student21 on 27/07/23.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao").resizable().scaledToFit()
            VStack{
                Image("caminhao")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Text("HackaTruck")
                    .padding(30.0), alignment: .top)
                    .font(.title)
                    .foregroundColor(.blue)
            }
            VStack{
                ZStack{
                    Rectangle().frame(width: 300)
                    HStack {
                        Text("Maker").foregroundColor(.yellow)
                        
                        Text("Space").foregroundColor(.red)
                           
                    }
                }
            }
            
        }.ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
