//
//  CartPage.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 25/07/24.
//

import SwiftUI

struct OrdersPage: View {

//  "capture" the observable variable that already injected in the window group
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var menuManager: MenuManager
    
    @State var name: String = ""
    @State var phone: String = ""
//    @State var orderConfirmed: Bool
    
    var body: some View {
        NavigationView{
            if cartManager.cart.isEmpty {
                Text("Your order is empty")
                    .navigationTitle("Your Order")
            } else {
                List{
                    Section("ITEMS"){
//                      id here is use to identify each element
//                      what is .0? its the tuple (see on the cartManager)
//                      what about .id? its from Product, each tuple contain Product. and inside Product there is an id
                        ForEach(cartManager.cart, id: \.0.id){ item in
                            OrderItem(item: (item.0, item.1))
                        }
                    }
                    .listRowBackground(Color("Background"))
                    
                    Section("YOUR DETAILS"){
                        VStack{
                            TextField("Your Name", text: $name)
                                .textFieldStyle(.roundedBorder)
                            Spacer()
                                .frame(height: 20)
                            TextField("Your Phone", text: $phone)
                                .keyboardType(.phonePad)
                                .textFieldStyle(.roundedBorder)
                        }
                        .padding(.top)
                        .padding(.bottom)
                    }
                    .listRowBackground(Color("Background"))
                    
                    Section(){
                        HStack{
                            Spacer()
                            Text("Total")
                            Spacer()
                            Text("$ \(cartManager.countTotal(), specifier: "%.2f")")
                                .bold()
                            Spacer()
                        }
                    }
                    .listRowBackground(Color("Background"))
                    
                    Section(){
                        HStack{
                            Spacer()
                            Button("Place Order"){
//                                orderConfirmed = true
                            }
                            .padding()
                            .frame(width: 250)
                            .background(Color("Alternative2"))
                            .foregroundStyle(Color.black)
                            .cornerRadius(25)
                            Spacer()
                        }
                    }
                    .listRowBackground(Color.clear)
                }
                .listSectionSeparatorTint(Color("AccentColor"))
                .listStyle(.insetGrouped)
                .navigationTitle("Your Order")
                            }
        }
    }
}

#Preview {
//  [!! IMPORTANT NOTES !!]
//  Dont forget injecting the preview with env object
//  eventho we alr injecting it in App, but this preview is OrdersPage. it doesnt contain the App
    OrdersPage()
        .environmentObject(CartManager())
}
