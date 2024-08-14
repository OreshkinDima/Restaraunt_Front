//
//  Product.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 14.08.2024.
//

import Foundation

struct Product: Identifiable{
    var id: String
    var title: String
    var price: Int
    var description: String
    var imageUrl: String?
}
