//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct NavigationBarDetailView: View {

    @EnvironmentObject var shop: Shop

    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left").navbarButton()
            }

            Spacer()

            Button {} label: {
                Image(systemName: "cart").navbarButton()
            }
        }
    }
}

fileprivate extension Image {
    func navbarButton() -> some View {
        self.font(.title)
            .foregroundColor(.white)
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
