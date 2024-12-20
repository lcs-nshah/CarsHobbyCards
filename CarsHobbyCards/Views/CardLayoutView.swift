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
                                    .init(color: .black, location: 0),
                                    .init(
                                        color: .gray,
                                        location: 0.33
                                    )
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
                                    .init(color: .gray, location: 0.8),
                                    .init(
                                        color: .black,
                                        location: 1.1
                                    )
                                ]
                            ),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }
            
            // Border
            Trapezoid()
                .fill(cardToShow.primaryColour)
            
            // Triquetras
            GeometryReader { geometry in
                VStack {
                    Triquetra()
                        .stroke(
                            Color(cardToShow.tertiaryColour),
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
                            Color(cardToShow.tertiaryColour),
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
            
            
            
            
            
            
            Text(cardToShow.carName)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CardLayoutView(cardToShow: porsche918Spyder)
}
