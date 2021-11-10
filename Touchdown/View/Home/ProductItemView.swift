//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct ProductItemView: View {

    private let product: Product

    var body: some View {
        VStack(alignment: .leading, spacing: 6.0) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                .padding(10.0)
            }
            .background(product.backgroundColor)
            .cornerRadius(12)

            Text(product.name)
                .font(.title3)
                .fontWeight(.black)

            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
        }
    }

    init(_ product: Product) {
        self.product = product
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(DataHandler.main.sampleProduct)
            .previewLayout(.sizeThatFits)
    }
}
