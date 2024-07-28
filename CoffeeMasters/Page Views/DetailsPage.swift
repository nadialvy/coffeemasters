//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 25/07/24.
//

import SwiftUI

struct DetailsPage: View {
    @State var quantity: Int = 1
    var product:Product
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    AsyncImage(url: product.imageUrl) {phase in
                        switch phase{
                        case.empty: ProgressView()
                            .frame(width: 300, height: 170)
                        case.success(let image):
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 170)
                                .cornerRadius(16)
                        case.failure:
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 250)
                        @unknown default:
                            EmptyView()
                        }
                        
                    }
                    Text(product.name)
                        .font(.title)
                        .bold()
                        .padding()
                    Text(product.description ?? "")
                        .font(.headline)
                        .padding()
                    HStack(){
                        Text("$ \(product.price, specifier:"%.2f")")
                        Stepper(value: $quantity, in:1...10){}
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(30)
                    Text("Subtotal $ \(product.price * Double(quantity), specifier: "%.2f")")
                        .font(.subheadline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom)
                    Button(action: {
                        cartManager.add(product: product, quantity: quantity)
                        dismiss()
                    }, label: {
                        Text("Add \(quantity) to Cart")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    })
                    .padding()
                    .padding(.horizontal, 50)
                    .background(Color("CardBackground"))
                    .cornerRadius(100)
                }
            }
        }
    }
}

#Preview {
    DetailsPage(
        quantity: 1,
        product: Product(id: 1, name: "test", description: "test", price: 1.21, image: "")
    )
    .environmentObject(CartManager())
}
