//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct BrandItemView: View {

    private let brand: Brand

    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }

    init(brand: Brand) {
        self.brand = brand
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: DataHandler.main.brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
