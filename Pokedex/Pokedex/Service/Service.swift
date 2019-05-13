//
//  Service.swift
//  Pokedex
//
//  Created by imac on 5/13/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class Service {
    
    static let instance = Service()
    let BASE_URL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchPokemon() {
        
        guard let url = URL(string: BASE_URL) else { return }
        
        URLSession.shared.dataTask(with: url, completionHandler: {(data, response, error) in
            
            // Handle error
            if let error = error {
                print("Failed to fetch data: ", error.localizedDescription)
                return
            }
            
            guard let data = data else { return }
            
            do {
                guard let resultArray = try JSONSerialization.jsonObject(with: data, options: []) as? [AnyObject] else { return }
                
                print(resultArray)
                
                
            } catch let error {
                print("Failed to create json: ", error.localizedDescription)
            }
        }).resume()
        
    }
    
}