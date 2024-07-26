//
//  MenuItem.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 25/07/24.
//

import SwiftUI

struct MenuItem: View {
    var image: String
    var title: String
    var price: String
    
    var body: some View {
        VStack{
            Image(image)
                .clipShape(
                    .rect(
                        topLeadingRadius: 100
                    )
                )
                .frame(width: 300, height: 170)
                            HStack{
                VStack(alignment: .leading){
                    Text(title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title)
                    Text("$ \(price)")
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
    MenuItem(
        image: "DummyImage", title: "Coffe", price: "3.25"
    )
}
