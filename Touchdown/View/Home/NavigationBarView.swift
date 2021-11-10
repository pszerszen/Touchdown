//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 09/11/2021.
//

import SwiftUI

struct NavigationBarView: View {

    @State private var isAnimated = false

    var body: some View {
        HStack {
            Button {} label: {
                Image(systemName: "magnifyingglass").navbarButton()
            }
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated = true
                    }
                }
            Spacer()
            Button {} label: {
                ZStack {
                    Image(systemName: "cart").navbarButton()

                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }

        }
    }
}

fileprivate extension Image {
    func navbarButton() -> some View {
        self.font(.title)
            .foregroundColor(.black)
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
