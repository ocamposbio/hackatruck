//
//  ViewModel.swift
//  api
//
//  Created by Student21 on 04/08/23.
//
// Não sei o pq mas ta funcionando
//

import Foundation

class ViewModel : ObservableObject {
    @Published var jogadores : [Results] = []
    
    func fetch(){
        guard let url = URL(string: "https://nba-stats-db.herokuapp.com/api/playerdata/season/2023/?format=json" ) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(ResultAPI.self, from: data)
                
                DispatchQueue.main.async {
                    self?.jogadores = parsed.results
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
