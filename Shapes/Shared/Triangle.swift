//
//  Triangle.swift
//  Shapes
//
//  Created by Ashlynn Mitchell on 3/8/22.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
//        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
//        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
//        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
        path.addQuadCurve(
            to: CGPoint(x: rect.minX, y: rect.midY),
            control: CGPoint(x: rect.maxX, y: rect.maxY)
        )
  
        
        return path
    }
}

struct ShapesView: View {
    var body: some View {
        ZStack {
            Triangle().fill(.blue).scaleEffect(5)
            Circle().fill(.clear).background(
                LinearGradient(gradient: Gradient(colors: [.orange, .pink, .red]), startPoint: .top, endPoint: .bottom).clipShape(Circle()).padding()
            ).frame(width: 300, height: 300, alignment: .top)
        }
    }
}

struct Triangle_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
