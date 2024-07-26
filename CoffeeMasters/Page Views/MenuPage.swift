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
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    NavigationLink{
                        DetailsPage(quantity: 4)
                    } label : {
                        MenuItem(image: "DummyImage", title: "Coffee", price: "2.43")
                    }
                    
                }
            }.navigationTitle("Product")
        }
    }
}

#Preview {
    MenuPage()
}
