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
            center: CGPoint(x: rect.maxX * 0.52, y: rect.maxY * 0.518),
            radius: 15,
            startAngle: .degrees(60),
            delta: .degrees(180)
        )
        path.move(to: CGPoint(x: rect.maxX * 0.46, y: rect.maxY * 0.55))
        path.addRelativeArc(
            center: CGPoint(x: rect.midX, y: rect.maxY * 0.55),
            radius: 15,
            startAngle: .degrees(180),
            delta: .degrees(180)
        )
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY * 0.485))
        path.addRelativeArc(
            center: CGPoint(x: rect.maxX * 0.48, y: rect.maxY * 0.518),
            radius: 15,
            startAngle: .degrees(300),
            delta: .degrees(180)
        )
        
        return path
    }
}

#Preview {
    CardTabView()
}
