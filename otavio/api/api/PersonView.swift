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
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ForEach(results) { result in
            Text(result.player_name)
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(results: results(from: Decoder as! Decoder))
    }
}
