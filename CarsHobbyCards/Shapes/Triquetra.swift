//
//  TriquetraShapeView.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import SwiftUI

struct Triquetra: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Define the shape
        path.addRelativeArc(
            center: CGPoint(x: rect.maxX * 0.73, y: rect.maxY * 0.5),
            radius: 170,
            startAngle: .degrees(60),
            delta: .degrees(180)
        )
        path.move(to: CGPoint(x: rect.maxX * 0.04, y: rect.maxY * 0.89))
        path.addRelativeArc(
            center: CGPoint(x: rect.midX, y: rect.maxY * 0.89),
            radius: 170,
            startAngle: .degrees(180),
            delta: .degrees(180)
        )
        path.move(to: CGPoint(x: rect.maxX * 0.5, y: rect.maxY * 0.105))
        path.addRelativeArc(
            center: CGPoint(x: rect.maxX * 0.27, y: rect.maxY * 0.5),
            radius: 170,
            startAngle: .degrees(300),
            delta: .degrees(180)
        )
        
        return path
    }
}

#Preview {
    CardTabView()
        .padding()
}
