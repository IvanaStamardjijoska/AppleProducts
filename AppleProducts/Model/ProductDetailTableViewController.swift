//
//  ProductDetailTableViewController.swift
//  AppleProducts
//
//  Created by Ivana on 12/17/18.
//  Copyright © 2018 Ivana. All rights reserved.
//

import UIKit

class ProductDetailTableViewController: UITableViewController {
    
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productTitleTextField: UITextField!
    
    @IBOutlet weak var productDescriptionTextView: UITextView!
    
    
    var product: Product? 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Edit Product"
        
        
        productImageView.image = product?.image
        productTitleTextField.text = product?.title
        productTitleTextField.delegate = self
        productDescriptionTextView.text = product?.description
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if indexPath.section == 0 && indexPath.row == 0{
            return indexPath
        }else {
            return nil
        }

    }
    
}
extension ProductDetailTableViewController : UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
extension  ProductDetailTableViewController
{
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        productDescriptionTextView.resignFirstResponder()
        productTitleTextField.resignFirstResponder()
    }
}


