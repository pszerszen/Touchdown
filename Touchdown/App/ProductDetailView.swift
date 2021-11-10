//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct ProductDetailView: View {

    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            HeaderDeatailView()
                .padding(.horizontal)
                .zIndex(1)

            Spacer()
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(shop.selectedProduct?.backgroundColor ??
                    DataHandler.main.sampleProduct.backgroundColor)
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
