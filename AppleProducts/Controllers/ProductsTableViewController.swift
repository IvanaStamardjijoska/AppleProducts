//
//  ProductTableViewController.swift
//  AppleProducts
//
//  Created by Ivana on 12/13/18.
//  Copyright © 2018 Ivana. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    
    //MARK: Data Model
    
    var products = ProductLine.getProductLines()[0].products
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Apple Store"
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension

        
    }
    
    // MARK: UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        let product = products[indexPath.row]
        cell.product = product
        
        return cell
    
}
}
