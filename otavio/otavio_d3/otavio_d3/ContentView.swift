//
//  ContentView.swift
//  otavio_d3
//
//  Created by Student21 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var botao: Bool = false
    
    var body: some View {
        ZStack{
            Image("caminhao").resizable().scaledToFill().blur(radius: 5).opacity(0.2)
            
            VStack{
                Text("Bem Vindo, \(username)")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                TextField("nome", text: $username)
                    .font(.title)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                Spacer()
                
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .offset(y:-100)
                        .overlay(
                            Image("truck")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250, height: 200))
                }
                Spacer()
                VStack{
                    Button("Entrar") {
                        botao = true
                    }
                    .alert(isPresented: $botao){
                        Alert(
                            title: Text("Você irá iniciar o desafio da aula agora"),
                            dismissButton: .default(Text("Vamos Lá!"))
                        )
                    }
                    
                }
                
            }
                Spacer()
            
        }
        .padding()
        
    }
    
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
