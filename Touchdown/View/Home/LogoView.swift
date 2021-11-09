//
//  LogoView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 09/11/2021.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4.0) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(Color.black)

            Image("logo-dark")
                .resizable()
                .frame(width: 30.0, height: 30.0, alignment: .center)
                .scaledToFit()

            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(Color.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
