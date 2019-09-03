//
//  Movie+image.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 29/08/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import Foundation
import UIKit

extension Movie {
    var image: UIImage? {
        return self.poster as? UIImage
    }
}
