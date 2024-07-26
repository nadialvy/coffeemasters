//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 25/07/24.
//

import SwiftUI

struct DetailsPage: View {
//    @State var quantity: Int = 1
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Image("DummyImage")
                        .cornerRadius(12)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 200)
                        .padding(.vertical, 16)
                    Text("ini desc decs ini desc decsini desc decs ini desc decs")
                        .font(.headline)
                    HStack(){
                        Text("$ 1.50 ea")
//                        Stepper(value: $quantity, in:1...10){}
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(30)
                    Text("Subtotal $ 1.50")
                        .font(.subheadline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom)
                    Button(action: {
                        
                    }, label: {
//                        Text("Add \(quantity) to Cart")
//                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    })
                    .padding()
                    .padding(.horizontal, 50)
                    .background(Color("CardBackground"))
                    .cornerRadius(100)
                    
                    
                }
            }
                .navigationTitle("Black Americano")
        }
    }
}

#Preview {
    DetailsPage(
//        quantity: 1
    )
}
