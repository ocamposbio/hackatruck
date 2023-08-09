//
//  ViewModel.swift
//  crud
//
//  Created by Student21 on 09/08/23.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var quitandas : [Results] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/desafiootavioget" ) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Results].self, from: data)
                
                DispatchQueue.main.async {
                    self?.quitandas = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
