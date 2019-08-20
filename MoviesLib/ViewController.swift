//
//  ViewController.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 15/08/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivToy: UIImageView!
    @IBOutlet weak var lbToy: UILabel!
    
    
    override func viewDidLoad() {
        
        
        ivToy.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        ivToy.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        
        "H:|-0-ivToy-0-lbToy-0|"
        
        super.viewDidLoad()
        
        let 🐶 = "Belinha"
        let 🐕 = "Lara"
        let 💩 = "Cocô"
        
        print("A \(🐶) e a \(🐕) fazem \(💩)")
        
        
    }


}

