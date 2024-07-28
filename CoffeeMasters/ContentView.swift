//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 23/07/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem{
                    Image(systemName: "tag")
                    Text("Offer")
                }
            InfoPage()
                .tabItem{
                    Image(systemName: "info")
                    Text("Info")
                }
            OrdersPage()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
                .badge(cartManager.cart.count)
        }

    }
}

#Preview {
    ContentView()
        .environmentObject(CartManager())
        .environmentObject(MenuManager())
}
