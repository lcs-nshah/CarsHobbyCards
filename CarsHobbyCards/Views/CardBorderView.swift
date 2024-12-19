//
//  CardBorderView.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-19.
//

import SwiftUI

struct CardBorderView: View {
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
                    .position(x: 0, y: 0)
                
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
        }
    }
}

#Preview {
    CardTabView()
}
