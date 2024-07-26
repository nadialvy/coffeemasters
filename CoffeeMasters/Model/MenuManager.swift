//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 26/07/24.
//

import Foundation

class MenuManager: ObservableObject {
//    kalau pengen view punya pengen binding, maka dikasi @Published. jadi kita tahu kapan menu nya berubah
//    another anotation, mirip sama @State
//    @State vs @Published
//    kalau @State biasanya digunakan untuk mengelola state lokal. @State hanya dapat digunakan untuk View => internal
//    kalau @Published untuk beberapa view. Hanya dapat digunakan didalam ObservableObject => global, >1 view
    @Published var menu: [Category] = [
        Category(name: "Coffee", products: [
//            we will replace it with data from calling an api
//            Product(id: 1, name: "Coffee", description: "This is a desc", price: 1.23, image: ""),
//            Product(id: 1, name: "Coffee", description: "This is a desc", price: 1.23, image: ""),
//            Product(id: 1, name: "Coffee", description: "This is a desc", price: 1.23, image: ""),
//            Product(id: 1, name: "Coffee", description: "This is a desc", price: 1.23, image: ""),
//            Product(id: 1, name: "Coffee", description: "This is a desc", price: 1.23, image: "")
        ])
    ]
}


