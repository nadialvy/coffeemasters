//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 25/07/24.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView{
            List{                
                ForEach(0 ..< 5){item in
                    NavigationLink{
                        DetailsPage(
//                            quantity: 1
                        )
                    } label : {
                        ProductItem(
                            product: Product(id: 1, name: "Coffee", description: "desc", price: 1.0, image: "")
                        )
                    }
                }
            }.navigationTitle("Product")
        }
    }
}

#Preview {
    MenuPage()
}
