//
//  ProductLine.swift
//  AppleProducts
//
//  Created by Ivana on 12/13/18.
//  Copyright © 2018 Ivana. All rights reserved.
//

import UIKit

class ProductLine {
    
    var name: String
    var products: [Product]
    
    init(named: String, includeProduct: [Product]) {
        name = named
        products = includeProduct
    }
    
    class func getProductLines () -> [ProductLine] {
        
        return [iDevices()]
    }
    
    // MARK: Private Helper Methods
    
    private class func iDevices() -> ProductLine {
        
        var products = [Product] ()
        
        products.append(Product(titled: "OS X", description: "Build on a rock-solid Unix.", imageName: "apple" ))
        
        return ProductLine (named: "Software", includeProduct: products)
    }
    
    private class func Mac() -> ProductLine {
        
        var products = [Product] ()
        
        products.append(Product(titled: "OS X", description: "Build on a rock-solid Unix.", imageName: "apple" ))
        
        return ProductLine (named: "Software", includeProduct: products)
    }
    private class func iphones() -> ProductLine {
        
        var products = [Product] ()
        
        products.append(Product(titled: "OS X", description: "Build on a rock-solid Unix.", imageName: "apple" ))
        
        return ProductLine (named: "Software", includeProduct: products)
    }
    private class func ipads() -> ProductLine {
        
        var products = [Product] ()
        
        products.append(Product(titled: "OS X", description: "Build on a rock-solid Unix.", imageName: "apple" ))
        
        return ProductLine (named: "Software", includeProduct: products)
    }}
