//
//  AddToCartDeatailView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct AddToCartDeatailView: View {

    @EnvironmentObject var shop: Shop

    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding(15.0)
        .background(shop.extract { $0.backgroundColor })
        .clipShape(Capsule())

    }
}

struct AddToCartDeatailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDeatailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
