//
//  Recipe.swift
//  recipes
//
//  Created by Haydee Rodriguez on 13/01/18.
//  Copyright © 2018 haydeeTi. All rights reserved.
//

import Foundation
import UIKit

class Recipe {
    
    var name: String!
    var time: Int!
    var image: UIImage!
    var ingrediants: [String]!
    var steps: [String]!
    
    init(name: String, image: UIImage){
        self.name = name
        self.image = image
    }
}
