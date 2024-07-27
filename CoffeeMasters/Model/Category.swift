//
//  Category.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 26/07/24.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name:String
    var products: [Product]
    var id:String {
        self.name
    }
}
