//
//  Product.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 26/07/24.
//

import Foundation

struct Product: Decodable {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""
    
    var imageUrl: URL{
        URL(string: "https://firtman.github.io/coffeemasters/api/images\(self.image)")!
    }
}
