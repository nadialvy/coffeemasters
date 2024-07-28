//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 26/07/24.
//

import SwiftUI

struct OrderItem: View {
    
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        HStack{
            Text("\(item.1)x")
            Text("\(item.0.name)")
            Spacer()
            Text("$ \(item.0.price*Double(item.1), specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.headline)
                .foregroundColor(Color("Color"))
                .padding()
                .onTapGesture {
                    print("click")
                    cartManager.remove(product: item.0)
                }
        }
        
    }
}

#Preview {
    OrderItem(
        item: (Product(id: 1, name: "aa", description: "aa", price: 1.23, image: ""), 2)
    )
    .padding()
    .environmentObject(CartManager())
}
