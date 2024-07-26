//
//  MenuItem.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 25/07/24.
//

import SwiftUI

struct ProductItem: View {
    var product:Product
    
    var body: some View {
        VStack{
            AsyncImage(url: product.imageUrl)
                .clipShape(
                    .rect(
                        topLeadingRadius: 100
                    )
                )
                .frame(width: 300, height: 170)
                            HStack{
                VStack(alignment: .leading){
                    Text(product.name)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title)
                    Text("$ \(product.price)")
                        .font(.caption)
                }
                Spacer()
                Image(systemName: "heart")
            }
            .padding(.bottom, 12)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        }
        .padding(.horizontal, 32)
        .cornerRadius(24)
    }}

#Preview {
    ProductItem(
        product: Product(id: 1, name: "Coffee", description: "this is a desc", price: 3.21, image: "")
    )
}
