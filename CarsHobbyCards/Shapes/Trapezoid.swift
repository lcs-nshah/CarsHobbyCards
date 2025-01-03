//
//  TrapezoidShapeView.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import SwiftUI

struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Define the shape
        path.move(to: CGPoint(x: rect.maxX * -1/20, y: rect.maxY * -1))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * -1))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 1 / 16))
        path.addLine(to: CGPoint(x: rect.maxX * 2 / 11, y: rect.maxY * 1 / 16))
        path.addLine(to: CGPoint(x: rect.maxX * 2 / 11, y: rect.maxY * 1 / 3))
        path.addLine(to: CGPoint(x: rect.maxX * 1 / 3, y: rect.maxY * 5 / 12))
        path.addLine(to: CGPoint(x: rect.maxX * 1 / 3, y: rect.maxY * 7 / 12))
        path.addLine(to: CGPoint(x: rect.maxX * 2 / 11, y: rect.maxY * 2 / 3))
        path.addLine(to: CGPoint(x: rect.maxX * 2 / 11, y: rect.maxY * 2))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 2))
        path.addLine(to: CGPoint(x: rect.maxX * -1/20, y: rect.maxY * -1))
        
        return path
    }
}

#Preview {
    Trapezoid()
}
