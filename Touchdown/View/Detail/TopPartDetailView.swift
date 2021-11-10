//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct TopPartDetailView: View {

    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6.0) {
            VStack(alignment: .leading, spacing: 6.0) {
                Text("Price")
                    .fontWeight(.semibold)

                Text(shop.extract{$0.formattedPrice})
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)

            Spacer()

            Image(shop.extract { $0.image })
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
