//
//  Shop.swift
//  Touchdown
//
//  Created by Александр Карпов on 23.02.2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
