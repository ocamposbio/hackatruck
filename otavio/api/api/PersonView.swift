//
//  PersonView.swift
//  api
//
// Não faço ideia do que ta acontecendo aqui
// Se alguém souber como arrumar, divirta-se
// Vou me internar no hospital psiquiatrico hoje
//
//  Created by Student21 on 04/08/23.
//

import SwiftUI

struct PersonView: View {
    
    var player : Results
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    Image("stats")
                        .resizable()
                        .offset(y: -145)
                        .scaledToFit()
                    Text("Name: \(player.player_name!) ")
                    Text("Age:  \(player.age!.description)")
                    Text("Games played: \(player.games!)")
                    Text("Games started: \(player.games_started!)")
                    Text("Time played: \(player.minutes_played!) Minutes")
                    Text("Team: \(player.team!)")
                    Text("Points: \(player.PTS!)")
                    Text("Season: \(player.season!)")
                }
                .foregroundColor(.white)
                .font(.title)
                .ignoresSafeArea()
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(player : Results(id: 1, player_name: "Teste", age: 18, games: 27, games_started: 27, minutes_played: 360, field_goals: 10, field_attempts: 1, field_percent: "10", three_fg: 1, three_attempts: 1, three_percent: "1", two_fg: 1, two_attempts: 1, two_percent: "1", effect_fg_percent: "1", ft: 1, fta: 1, ft_percent: "1", ORB: 1, DRB: 1, TRB: 1, AST: 1, STL: 1, BLK: 1, TOV: 1, PF: 1, PTS: 1, team: "HOE", season: 2023 ))
    }
}
