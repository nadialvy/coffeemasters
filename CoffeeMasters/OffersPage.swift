//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 24/07/24.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        VStack{
            Offer(title: "Early Coffee", desc: "10% off. Offer valid from 6am to 9am.")
            Offer(title: "Welcome Gift", desc: "25% off on your first order.")
        }
    }
}

#Preview {
    OffersPage()
}
