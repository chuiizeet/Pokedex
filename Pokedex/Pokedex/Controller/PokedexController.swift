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
    
    //MARK: - Selectors
    
    @objc func showSearchBar() {
        print("Search bar")
    }
    
    // MARK: - Helper functions
    
    func configureViewComponents() {
        collectionView.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = .coralRed()
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Pokedex"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(showSearchBar))
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
}
