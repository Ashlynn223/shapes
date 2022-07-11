//
//  BadgeSymbol.swift
//  Shapes
//
//  Created by Ashlynn Mitchell on 3/8/22.
//

import SwiftUI

struct BadgeSymbol: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(
                x: 0.25,
                y: 0.50
            ))
            path.addLine(to: CGPoint(
                x: 0.50,
                y: 0.75
            ))
        }.stroke().fill(.black)
    }
}

struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
