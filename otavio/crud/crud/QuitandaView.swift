//
//  QuitandaView.swift
//  crud
//
//  Created by Student21 on 09/08/23.
//

import SwiftUI

struct QuitandaView: View {
    
    var quitandas : Results
    var frutasDisponiveis : frutas
    
    var body: some View {
        
        ZStack{
            Rectangle()
            LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Text("Nome da Quitanda: \(quitandas.nomeQuitanda) ")
                Text("Endereço da Quitanda: \(quitandas.endereçoQuitanda)")
            }
        }
    }
}


//struct QuitandaView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuitandaView(quitanda : Results(id: 1, nomeQuitanda: "teste", endereçoQuitanda: "teste", frutasDisponiveis: frutas))
//    }
//}
