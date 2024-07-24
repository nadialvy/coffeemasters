//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 24/07/24.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var desc = ""
    
    var body: some View {
        ZStack{
            Image("BackgroundPattern")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 200)
                .clipped()
            VStack{
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(desc)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
    }
}

#Preview {
    Offer(
        title: "Coffee Latte",
        desc: "This is a coffee latte"
    )
}
