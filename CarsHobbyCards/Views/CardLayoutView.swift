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
            Trapezoid()
            HStack {
                GeometryReader { geometry in
                    VStack {
                        Triquetra()
                            .stroke(
                                Color.yellow,
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
                        
                        Spacer()
                        
                        Triquetra()
                            .stroke(
                                Color.yellow,
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
            }
            Text(cardToShow.carName)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CardLayoutView(cardToShow: porsche918Spyder)
}
