//
//  Struct.swift
//  api
//
//  Created by Student21 on 04/08/23.
//
//
// Criação da struct de results da api.
//
// Usei o identifable por a api ter um id chamado id, caso tivesse outro nome, o parametro id teria que ser passado dentro do ForEach como um identificador.

import Foundation


struct ResultAPI: Decodable{
    var results : [Results]
}

struct Results : Decodable, Identifiable {
    let id : Int
    let player_name : String?
    let age : Int?
    let games : Int?
    let games_started : Int?
    let minutes_played : Int?
    let field_goals : Int?
    let field_attempts : Int?
    let field_percent : String?
    let three_fg : Int?
    let three_attempts : Int?
    let three_percent : String?
    let two_fg : Int?
    let two_attempts : Int?
    let two_percent : String?
    let effect_fg_percent : String?
    let ft : Int?
    let fta : Int?
    let ft_percent : String?
    let ORB : Int?
    let DRB : Int?
    let TRB : Int?
    let AST : Int?
    let STL : Int?
    let BLK : Int?
    let TOV : Int?
    let PF  : Int?
    let PTS : Int?
    let team : String?
    let season : Int?
}
