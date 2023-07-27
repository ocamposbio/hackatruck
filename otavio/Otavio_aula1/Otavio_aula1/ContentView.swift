//
//  ContentView.swift
//  Otavio_aula1
//
//  Created by Student21 on 27/07/23.
//

//A tela segue a hierarquia do código

//modifiers --> modificações em uma view
//.scaletofill() e .resizable() são exemplos de modifiers

/*
 VStack coloca os recursos de cima pra baixo
 HStack coloca os recursos da esquerda pra direita
 ZStack empilhamento no eixo Z
 
 zIndex --> .zIndex(1) //Ele inverte os objetos
 
 Spacer cria um espaço entre os objetos
 
*/


import SwiftUI

struct ContentView: View {
    var body: some View { //me devolva uma view
        VStack { //vertical stack
            Image("caminhao").resizable().scaledToFit()
            
            Text("HackaTruck").foregroundColor(.blue).font(.largeTitle)
            HStack {
                Text("Maker").foregroundColor(.yellow).font(.title)
                Text("Space").foregroundColor(.red).font(.title)
            }
        }
        .padding()
    }
}

//Responsável pelo preview, atualiza toda vez que o código é atualizado.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
