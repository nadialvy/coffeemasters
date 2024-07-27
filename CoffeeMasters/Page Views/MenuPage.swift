//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 25/07/24.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView{
            List{
                ForEach(menuManager.menu){item in
                    Text(item.name)
                        .fontWeight(.bold)
                    ForEach(item.products){product in
                        NavigationLink{
                            DetailsPage(
                                quantity: 1,
                                product: product
                            )
                        } label : {
                            ProductItem(product: product)
                        }
                        
                    }
                }
            }.navigationTitle("Product")
        }
    }
}

#Preview {
    MenuPage()
        .environmentObject(MenuManager())
}
