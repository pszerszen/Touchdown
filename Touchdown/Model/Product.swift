//
//  Product.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 09/11/2021.
//

import SwiftUI

struct Product : Codable, Identifiable {

    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]

    var formattedPrice: String {
        return "$\(price)"
    }

    var backgroundColor: Color {
        return Color(red: red, green: green, blue: blue)
    }

    private var red: Double {
        return color[0]
    }

    private var green: Double {
        return color[1]
    }

    private var blue: Double {
        return color[2]
    }
}
