//
//  File.swift
//  Project prototype
//
//  Created by MacBook on 31.03.2022.
//

import Foundation

//MARK: model to download SmallSize Images
struct SmallImages: Decodable {
    var total: Int
    var totalHits: Int
    var hits: [SmallImage]
}

struct SmallImage: Decodable, Identifiable, Hashable {
    let id: Int
    let previewURL: String
    let user: String
}
