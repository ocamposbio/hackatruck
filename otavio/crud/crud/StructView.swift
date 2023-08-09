//
//  Struct.swift
//  api
//
//  Created by Student21 on 04/08/23.
//
//

import Foundation


struct frutas : Decodable {
    let banana : String
    let maça : String
    let manga : String
}

struct Results : Decodable, Identifiable {
    let id : Int
    let nomeQuitanda : String
    let endereçoQuitanda : String
    let frutasDisponiveis : [frutas]
}
