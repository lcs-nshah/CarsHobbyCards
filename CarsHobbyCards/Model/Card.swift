//
//  Card.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    let carName: String
    let badge: String
    let carPhoto: String
    let engine: String
    let horsepower: String
    let weight: String
    let accelerationTime: String
    let topSpeed: String
    let price: String
    let numberCreated: String
    let productionYears: String
    
}

// Create instances of the structure
let porsche = Card(carName: "porsche", badge: "", carPhoto: "", engine: "", horsepower: "", weight: "", accelerationTime: "", topSpeed: "", price: "", numberCreated: "", productionYears: "")

let mclaren = Card(carName: "mclaren", badge: "", carPhoto: "", engine: "", horsepower: "", weight: "", accelerationTime: "", topSpeed: "", price: "", numberCreated: "", productionYears: "")

let ferrari = Card(carName: "ferrari", badge: "", carPhoto: "", engine: "", horsepower: "", weight: "", accelerationTime: "", topSpeed: "", price: "", numberCreated: "", productionYears: "")


// Array
let cards = [
    porsche,
    mclaren,
    ferrari
]
