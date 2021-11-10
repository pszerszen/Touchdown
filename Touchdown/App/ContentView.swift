//
//  ContentView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 09/11/2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            VStack(spacing: 0.0) {
                NavigationBarView()
                    .padding(.horizontal, 15.0)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0.0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20.0)
                        CategoryGridView()

                        TitleView("Helmets")
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(DataHandler.main.products) { product in
                                ProductItemView(product)
                            }
                        }
                        .padding(15)

                        TitleView("Brands")
                        BrandGridView()

                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
