//
//  DataHandler.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 09/11/2021.
//

import Foundation

class DataHandler {

    let players: [Player]
    let categories: [Category]
    let products: [Product]
    let brands: [Brand]
    let sampleProduct: Product

    let main = DataHandler()

    private init() {
        players = Bundle.main.decode("player.json")
        categories = Bundle.main.decode("category.json")
        products = Bundle.main.decode("product.json")
        brands = Bundle.main.decode("brand.json")
        sampleProduct = products[0]
    }
}

fileprivate extension Bundle {

    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) from bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
}
