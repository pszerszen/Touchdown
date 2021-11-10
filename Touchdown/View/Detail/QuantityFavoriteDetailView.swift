//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {

    @State private var counter = 0

    var body: some View {
        HStack(alignment: .center, spacing: 6.0) {
            Button {
                if counter > 0 {
                    counter -= 1
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "minus.circle")
            }

            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)

            Button {
                if counter < 100 {
                    counter += 1
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "plus.circle")
            }

            Spacer()

            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
