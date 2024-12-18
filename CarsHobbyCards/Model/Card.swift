//
//  Card.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    let name: String
    
}

// Create instances of the structure
let porsche = Card(name: "porsche")

// Array
let cards = [
    porsche
]
