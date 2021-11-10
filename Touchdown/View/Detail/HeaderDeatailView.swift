//
//  HeaderDeatailView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct HeaderDeatailView: View {

    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 6.0) {
            Text("Protective Gear")

            Text(shop.extract {$0.name})
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }
        .foregroundColor(.white)
    }
}

struct HeaderDeatailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDeatailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
