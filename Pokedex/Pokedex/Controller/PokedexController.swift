//
//  PokedexController.swift
//  Pokedex
//
//  Created by imac on 5/12/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class PokedexController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewComponents()
        
    }
    
    // MARK: - Helper functions
    
    func configureViewComponents() {
        collectionView.backgroundColor = .red
    }
}
