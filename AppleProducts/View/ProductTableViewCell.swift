//
//  ProductTableViewCell.swift
//  AppleProducts
//
//  Created by Ivana on 12/13/18.
//  Copyright © 2018 Ivana. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productTitleLabel: UILabel!
    
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    var product: Product? {
        didSet {
            self.updateUI()
            
        }
    }
    func updateUI() {
        
        productImageView?.image = product?.image
        productTitleLabel?.text = product?.title
        productDescriptionLabel?.text = product?.description
        
        
        
}
}
