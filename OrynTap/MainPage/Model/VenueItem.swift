//
//  VenueItem.swift
//  OrynTap
//
//  Created by Тынысбек Жанагуль on 18.04.2023.
//

import Foundation

struct VenueItem: Identifiable {
    var id = UUID()
    var title: String
    var price: String
    var seats: String
    var address: String
    var image: String
    var isFavorite: Bool
}
