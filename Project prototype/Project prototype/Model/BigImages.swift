//
//  CodableData.swift
//  Project prototype
//
//  Created by MacBook on 29.03.2022.
//

import Foundation



//MARK: model to download BigSize Images
struct BigImages: Decodable {
    var total: Int
    var totalHits: Int
    var hits: [BigImage]
}

struct BigImage: Decodable, Identifiable, Hashable {
    let id: Int
    let pageURL: String
    let tags: String
    let webformatURL: String
}
