//
//  MovieRegisterViewController.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 29/08/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import UIKit

class MovieRegisterViewController: UIViewController {
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfRating: UITextField!
    @IBOutlet weak var tfDuration: UITextField!
    @IBOutlet weak var tfCategories: UITextField!
    @IBOutlet weak var ivPoster: UIImageView!
    @IBOutlet weak var tvSummary: UITextView!
    @IBOutlet weak var btAddEdit: UIButton!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            tfTitle.text = movie.title
            tfRating.text = "\(movie.rating)"
            tfDuration.text = movie.duration
            tfCategories.text = movie.categories
            ivPoster.image = movie.image
            tvSummary.text = movie.summary
            btAddEdit.setTitle("Alterar", for: .normal)
        }
    }
    
    @IBAction func addEditMovie(_ sender: UIButton) {
        if movie == nil {
            movie = Movie(context: context)
        }
        movie?.title = tfTitle.text
        movie?.rating = Double(tfRating.text!) ?? 0
        movie?.duration = tfDuration.text
        movie?.categories = tfCategories.text
        movie?.poster = ivPoster.image
        movie?.summary = tvSummary.text
        
        try? context.save()
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func chooseImageType(_ sender: UIButton) {
        
    }
}