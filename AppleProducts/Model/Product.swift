//
//  Product.swift
//  AppleProducts
//
//  Created by Ivana on 12/13/18.
//  Copyright © 2018 Ivana. All rights reserved.
//

import UIKit

enum ProductRating {
    
    case unrated
    case averege
    case ok
    case good
    case brilliant
    
}

class Product {
    
    var image: UIImage
    var title: String
    var description: String
    var rating: ProductRating
    
    init(titled: String, description:String, imageName: String) {
        self.title = titled
        self.description = description
        if let image = UIImage(named: imageName) {
            self.image = image
        } else {
            self.image = UIImage(named: "default")!
            
        }
        rating = .unrated
    }
    
}
