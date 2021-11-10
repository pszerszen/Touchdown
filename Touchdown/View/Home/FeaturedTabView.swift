//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct FeaturedTabView: View {

    var body: some View {
        TabView {
            ForEach(DataHandler.main.players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10.0)
                    .padding(.horizontal, 15.0)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(.gray)
    }
}
