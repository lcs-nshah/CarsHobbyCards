//
//  Card.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import Foundation
import SwiftUICore

struct Card: Identifiable {
    let id = UUID()
    // Images
    let carName: String
    let badge: String
    let carPhoto: String
    // Statistics
    let engine: String
    let horsepower: String
    let weight: String
    let accelerationTime: String
    let topSpeed: String
    let price: String
    let numberCreated: String
    let productionYears: String
    // Colours
    let borderColor: Color
    let accentColor: Color
    let primaryBackgroundColor: Color
    let secondaryBackgroundColor: Color
    let tertiaryBackgroundColor: Color
    let quaternaryBackgroundColor: Color
}

// Create instances of the structure
let porsche918Spyder = Card(
    carName: "Porsche918SpyderName",
    badge: "PorscheBadge",
    carPhoto: "Porsche918SpyderCar",
    engine: "Naturally aspirated 4.6L V8 + 2 electric motors",
    horsepower: "887 hp",
    weight: "1,674kg",
    accelerationTime: "2.6 seconds",
    topSpeed: "345km/h",
    price: "$1,150,000",
    numberCreated: "1 of 918",
    productionYears: "2013-2015",
    borderColor: .porsche918SpyderLightGray,
    accentColor: .porsche918SpyderGreen,
    primaryBackgroundColor: .gray,
    secondaryBackgroundColor: .gray,
    tertiaryBackgroundColor: .porsche918SpyderDarkGray,
    quaternaryBackgroundColor: .porsche918SpyderDarkGray
)

let ferrariLaFerrari = Card(
    carName: "FerrariLaFerrariName",
    badge: "FerrariBadge",
    carPhoto: "FerrariLaFerrariCar",
    engine: "6.3L naturally aspirated V12 + 1 electric motor",
    horsepower: "963 hp",
    weight: "1,585kg",
    accelerationTime: "2.6 seconds",
    topSpeed: "355km/h",
    price: "$2,045,000",
    numberCreated: "1 of 499",
    productionYears: "2013-2016",
    borderColor: .laFerrariDarkRed,
    accentColor: .laFerrariYellow,
    primaryBackgroundColor: .laFerrariLightRed,
    secondaryBackgroundColor: .mcLarenP1Gray,
    tertiaryBackgroundColor: .white,
    quaternaryBackgroundColor: .black
)

let mcLarenP1 = Card(
    carName: "McLarenP1Name",
    badge: "McLarenBadge",
    carPhoto: "McLarenP1Car",
    engine: "Twin-turbocharged 3.8L V8 + 1 E-Motor",
    horsepower: "916 hp",
    weight: "1,490kg",
    accelerationTime: "2.8 seconds",
    topSpeed: "350km/h",
    price: "$1,945,000",
    numberCreated: "1 of 375",
    productionYears: "2013-2015",
    borderColor: .mcLarenP1Orange,
    accentColor: .mcLarenP1Black,
    primaryBackgroundColor: .mcLarenP1LightOrange,
    secondaryBackgroundColor: .mcLarenP1Gray,
    tertiaryBackgroundColor: .mcLarenP1Black,
    quaternaryBackgroundColor: .mcLarenP1Black
)

// Array
let cards = [
    porsche918Spyder,
    mcLarenP1,
    ferrariLaFerrari
]
