//
//  Product.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 09/11/2021.
//

import Foundation

struct Product : Codable, Identifiable {

    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
