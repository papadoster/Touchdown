//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Александр Карпов on 23.02.2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
