//
//  Movie.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 20/08/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let title: String
    let categories: String
    let duration: String
    let rating: Double
    let summary: String
    let image: String
    // var image: String? // Se puder vir vazio
}

/* Se o nome for diferente da estrutura
enum CodingKeys: String, CodingKey {
    case summary = "movie_summary"
    case categories
    case duration
    case rating
    case image
    case title
}
*/


