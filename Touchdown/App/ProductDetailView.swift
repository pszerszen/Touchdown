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

            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)

            VStack {
                RatingsSizesDetailView()
                    .padding(.top, -20.0)
                    .padding(.bottom, 10.0)

                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.extract { $0.description })
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                }

                QuantityFavoriteDetailView()
                    .padding(.vertical, 10.0)
                AddToCartDeatailView()
                    .padding(.bottom, 20.0)
            }
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top, -105.0))
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(shop.extract{$0.backgroundColor})
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
