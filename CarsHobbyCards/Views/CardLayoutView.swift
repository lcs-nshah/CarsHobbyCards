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
                    .border(Color.blue)
                    .padding()
                    
                Image(cardToShow.badge)
                
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
                    .padding()
                
            }
            
            
            
            
            Text(cardToShow.carName)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CardLayoutView(cardToShow: porsche)
}
