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
            
            // Car image, price, and number
            GeometryReader { geometry in
                VStack {
                    HStack {
                        Text(cardToShow.price)
                            .font(.system(size: 20, weight: .heavy, design: .rounded))
                            .padding(.leading, 90)
                        
                        Spacer()
                        
                        Text(cardToShow.numberCreated)
                            .font(.system(size: 18, weight: .medium, design: .monospaced))
                            .padding(.horizontal)
                    }
                    
                    Image(cardToShow.carPhoto)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .border(cardToShow.accentColor, width: 4)
                        .padding(.leading, 90)
                        .padding(.trailing)
                    
                    HStack {
                        Spacer()
                        
                        Text(cardToShow.productionYears)
                            .font(.system(size: 18, weight: .medium, design: .monospaced))
                            .padding(.horizontal)
                    }
                }
                .position(
                    x: geometry.size.width/2,
                    y: geometry.size.height/4.57
                )
            }
            
            // Statistics
            VStack {
                
                HStack {
                }
                HStack{
                }
                
            }
            
        }
        .ignoresSafeArea()
        .background(cardToShow.primaryBackgroundColor)
    }
}

#Preview {
    CardTabView()
}
