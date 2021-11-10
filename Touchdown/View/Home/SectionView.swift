//
//  SectionView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct SectionView: View {

    @State var rotateClockwise: Bool

    private var rotation: Double {
        return rotateClockwise ? 90 : -90
    }

    var body: some View {
        VStack(spacing: 0.0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            .rotationEffect(Angle(degrees: rotation))
            Spacer()
        }
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
