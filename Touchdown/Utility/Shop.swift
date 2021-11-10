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

    var displayProductsList: Bool {
        return !showingProduct && selectedProduct == nil
    }

    func selectProduct(_ product: Product) {
        selectedProduct = product
        showingProduct = true
    }

    func extract<T>(_ extract: (Product) -> T) -> T {
        return extract(selectedProduct ?? DataHandler.main.sampleProduct)
    }
}


