//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Александр Карпов on 22.02.2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // Locate
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failedd to locate \(file)")
        }
        // Create property for the data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file)")
        }
        // Create a decoder
        let decoder = JSONDecoder()
        // Create a property for decoded data
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file)")
        }
        
        // Return the ready to use data
        return decodedData
    }
}
