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
            AsyncImage(url: product.imageUrl) {phase in
                switch phase{
                case.empty: ProgressView()
                    .frame(width: 300, height: 170)
                    .padding()
                case.success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 170)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 100
                            )
                        )
                case.failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 100)
                        .frame(width: 300, height: 250)
                @unknown default:
                    EmptyView()
                }
                
            }
                
                
                            HStack{
                VStack(alignment: .leading){
                    Text(product.name)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title)
//                  "%.2f"? meaning that takes only 2 digit behind commas in float
                    Text("$ \(product.price, specifier: "%.2f")")
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
        product: Product(id: 1, name: "Coffee", description: "this is a desc", price: 3.21, image: "DummyImage")
    )
}
