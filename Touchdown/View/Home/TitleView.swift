//
//  TitleView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct TitleView: View {

    private let title: String

    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15.0)
        .padding(.bottom, 10.0)
    }

    init(_ title: String) {
        self.title = title
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView("Helmets")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
