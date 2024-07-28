//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 26/07/24.
//

import Foundation

class CartManager: ObservableObject{
    //    array of tupple =>  [(Product, Int)]
    @Published var cart: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int){
//      ((firstIndex is a hof just like removeAll))
//      what is in? its just naming the argument you got. just like high order function in js
//      array.foreach(number => {
//        console.log(number)
//      }
//      (( i know its weird why we decalre it inside the function <smashing keyboard> ))
        
        if let index = self.cart.firstIndex(where: { item in
            item.0.id == product.id
        }){
            self.cart[index].1 += quantity
        }else {
            self.cart.append( (product, quantity) )
        }
    }
    
    func remove(product: Product){
        self.cart.removeAll { itemInCart in
            return itemInCart.0.id == product.id
        }
    }
    
    func countTotal() -> Double {
        var total = 0.0
        for item in self.cart{
            total += Double(item.1)*item.0.price
        }
        return total
    }
}
