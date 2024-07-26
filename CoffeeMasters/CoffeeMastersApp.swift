//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 23/07/24.
//

import SwiftUI

@main
// implementing/conforming the App (App is a protocol)
// if we are conforming a protocol, we have to implementing the property of its protocol
struct CoffeeMastersApp: App {
//    dengan mendecalse some berarti kita harus mereturn 1 spesifik tipe tertentu
//    coba pikirin, pernah ga di iphone kita running 2 apps di 1 screen secara bersamaan...
//    ngga kan? nah thats why kita perlu keyword some
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
