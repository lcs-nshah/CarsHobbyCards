//
//  CardLayoutView.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import SwiftUI

struct CardLayoutView: View {
    
    // MARK: Stored Property
    let cardToShow: Card
    
    // MARK: Computed Property
    var body: some View {
        ZStack {
            
            // Background gradient
            VStack {
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(
                                stops: [
                                    .init(color: cardToShow.tertiaryBackgroundColor, location: 0),
                                    .init(color: cardToShow.secondaryBackgroundColor, location: 0.33),
                                    .init(color: cardToShow.primaryBackgroundColor, location: 1)
                                ]
                            ),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(
                                stops: [
                                    .init(color: cardToShow.primaryBackgroundColor, location: 0),
                                    .init(color: cardToShow.secondaryBackgroundColor, location: 0.5),
                                    .init(color: cardToShow.tertiaryBackgroundColor, location: 1),
                                    .init(color: cardToShow.quaternaryBackgroundColor, location: 1.1)
                                ]
                            ),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }
            
            // Border
            Rectangle()
                .aspectRatio(3.0/1.0, contentMode: .fit)
                .foregroundStyle(cardToShow.borderColor)
            
            Trapezoid()
                .fill(cardToShow.borderColor)
                .stroke(cardToShow.accentColor, lineWidth: 4)
            
            // Triquetras
            GeometryReader { geometry in
                VStack {
                    Triquetra()
                        .stroke(
                            Color(cardToShow.accentColor),
                            style: StrokeStyle(
                                lineWidth: 3,
                                lineCap: .round,
                                lineJoin: .round
                            )
                        )
                        .fill(Color.clear)
                        .aspectRatio(1.0/1.0, contentMode: .fit)
                        .position(
                            x: geometry.size.width/25,
                            y: geometry.size.height/100
                        )
                        .padding()
                    
                    Triquetra()
                        .stroke(
                            Color(cardToShow.accentColor),
                            style: StrokeStyle(
                                lineWidth: 3,
                                lineCap: .round,
                                lineJoin: .round
                            )
                        )
                        .fill(Color.clear)
                        .aspectRatio(1.0/1.0, contentMode: .fit)
                        .position(
                            x: geometry.size.width/25,
                            y: geometry.size.height/2.5
                        )
                        .padding()
                }
            }
            
            // Badge
            Image(cardToShow.badge)
                .resizable()
                .aspectRatio(1.0/1.0, contentMode: .fit)
                .padding(.trailing, 270)
            
            // Name
            Image(cardToShow.carName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.leading, 150)
                .padding(.trailing)
            
            // Top half
            GeometryReader { geometry in
                VStack (alignment: .trailing) {
                    HStack {
                        // Country
                        Image(cardToShow.countryFlag)
                            .resizable()
                            .aspectRatio(7, contentMode: .fit)
                            .padding(.leading, 90)
                        
                        Spacer()
                        
                        // Number of cars
                        Text(cardToShow.numberCreated)
                            .font(.system(size: 18, weight: .medium, design: .monospaced))
                            .padding(.horizontal)
                            .padding(.vertical, -2)
                    }
                    // Car image
                    Image(cardToShow.carPhoto)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .border(cardToShow.accentColor, width: 4)
                        .padding(.leading, 90)
                        .padding(.trailing)
                    
                    HStack {
                        Spacer()
                        
                        // Production years
                        Text(cardToShow.productionYears)
                            .font(.system(size: 18, weight: .medium, design: .rounded))
                            .padding(.horizontal)
                    }
                }
                .position(
                    x: geometry.size.width/2,
                    y: geometry.size.height/4.5
                )
            }
            
            // Bottom half
            VStack (alignment: .center) {
                Spacer()
                
                // Engine
                Text("Engine:")
                    .font(.system(size: 25, weight: .heavy, design: .rounded))
                VStack (alignment: .leading) {
                    Text(cardToShow.engine)
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                    Text(cardToShow.motor)
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                }
                .padding(.trailing, 35)
                
                HStack {
                    // Left side
                    VStack (alignment: .leading) {
                        // Horsepower
                        Text("Horsepower:")
                            .font(.system(size: 22, weight: .heavy, design: .rounded))
                        Text(cardToShow.horsepower)
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                        
                        // Acceleration time
                        VStack (alignment: .leading) {
                            Text("0-100km/h:")
                                .font(.system(size: 22, weight: .heavy, design: .rounded))
                            Text(cardToShow.accelerationTime)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                        .padding(.vertical)
                        
                        // Price
                        Text("Value:")
                            .font(.system(size: 22, weight: .heavy, design: .rounded))
                        Text(cardToShow.price)
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                    
                    // Right side
                    VStack (alignment: .leading) {
                        // Torque
                        Text("Torque:")
                            .font(.system(size: 22, weight: .heavy, design: .rounded))
                        Text(cardToShow.torque)
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                        
                        // Top speed
                        VStack (alignment: .leading) {
                            Text("Top Speed:")
                                .font(.system(size: 22, weight: .heavy, design: .rounded))
                            Text(cardToShow.topSpeed)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                        .padding(.vertical)
                        
                        // Weight
                        Text("Weight:")
                            .font(.system(size: 22, weight: .heavy, design: .rounded))
                        Text(cardToShow.weight)
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                    .padding(.leading)
                }
                .padding(.vertical, 1)
                
                Spacer()
                    .aspectRatio(7, contentMode: .fit)
            }
            .padding(.leading, 90)
        }
        .ignoresSafeArea()
        .background(cardToShow.primaryBackgroundColor)
    }
}

#Preview {
    CardTabView()
}
