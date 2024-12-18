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
//        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
//        path.addQuadCurve(
//            to: CGPoint(x: rect.maxX, y: rect.maxY),
//            control: CGPoint(x: rect.minX, y: rect.maxY))
//        path.addQuadCurve(
//            to: CGPoint(x: rect.minX, y: rect.maxY),
//            control: CGPoint(x: rect.midX, y: rect.maxY * 0.36))
//        path.addQuadCurve(
//            to: CGPoint(x: rect.midX, y: rect.minY),
//            control: CGPoint(x: rect.maxX * 0.71, y: rect.maxY * 0.71))
        
        path.addRelativeArc(center: CGPoint(x: rect.maxX * 0.75, y: rect.maxY * 0.4), radius: 170, startAngle: .degrees(60), delta: .degrees(180))
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY * 0.775))
        
        path.addRelativeArc(center: CGPoint(x: rect.midX, y: rect.maxY * 0.775), radius: 170, startAngle: .degrees(180), delta: .degrees(180))
//
//        path.addRelativeArc(center: CGPoint(x: rect.maxX * 0.25, y: rect.maxY * 0.4), radius: 150, startAngle: .degrees(300), delta: .degrees(180))
        
        return path
    }
}

#Preview {
    CardTabView()
        .padding()
}
