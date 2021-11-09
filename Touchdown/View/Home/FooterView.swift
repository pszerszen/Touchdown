//
//  FooterView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 09/11/2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10.0) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)

            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(Color.gray)
                .layoutPriority(0)

            Text("""
                Copyright © Piotr Szerszeń
                All rights reserved
                """)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)

        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
