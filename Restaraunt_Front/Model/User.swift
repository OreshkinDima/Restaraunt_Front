//
//  User.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 15.08.2024.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let name: String?
    let login: String
    let role: String?
}
