//
//  CodableData.swift
//  Project prototype
//
//  Created by MacBook on 29.03.2022.
//

import Foundation

struct SearchedImages: Decodable {
    var total: Int
    var totalHits: Int
    var hits: [Hit]
}

struct Hit: Decodable {
    let id: Int
    let pageURL: String
    let tags: String
    let webformatURL: String

}
