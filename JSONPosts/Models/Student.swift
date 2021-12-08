//
//  Student.swift
//  JSONPosts
//
//  Created by Mickael Mas on 08/12/2021.
//

import Foundation

struct Student: Codable, Identifiable {
    let id: Int
    let name: String
    let afp: AFP
}

struct AFP: Codable {
    let city: String
    let date: String
}
