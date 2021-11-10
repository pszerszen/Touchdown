//
//  Shop.swift
//  Touchdown
//
//  Created by Piotr Szerszeń on 10/11/2021.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var showingProduct = false
    @Published var selectedProduct: Product?

    func extract<T>(_ extract: (Product) -> T) -> T {
        return extract(selectedProduct ?? DataHandler.main.sampleProduct)
    }
}


