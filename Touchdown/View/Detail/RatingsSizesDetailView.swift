//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import SwiftUI

struct RatingsSizesDetailView: View {

    private let sizes = ["XS", "S", "M", "L", "XL"]

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3.0) {
                Text("Ratings").titleStyle()

                HStack(alignment: .center, spacing: 3.0) {
                    ForEach(1...5, id: \.self) { _ in
                        Button {
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 3.0) {
                Text("Sizes").titleStyle()

                HStack(alignment: .center, spacing: 5.0) {
                    ForEach(sizes, id: \.self) { size in
                        Button {} label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5)
                                                .stroke(colorGray, lineWidth: 2))
                        }
                    }
                }
            }
        }
    }
}

fileprivate extension Text {
    func titleStyle() -> some View {
        return self
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundColor(colorGray)
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
