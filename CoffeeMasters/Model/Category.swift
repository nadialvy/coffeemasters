//
//  Category.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 26/07/24.
//

import Foundation

struct Category: Decodable {
    var name:String
    var products: [Product]
}
