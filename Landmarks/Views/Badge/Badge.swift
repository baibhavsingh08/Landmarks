//
//  Badge.swift
//  Landmarks
//
//  Created by Raramuri on 31/07/24.
//

import SwiftUI

struct Badge: View {
    
    var badgeSymbols: some View {
        ForEach(0..<8){ ind in
            RotatedBadgeSymbol(angle: .degrees(Double(ind) / Double(8)) * 360.0)
        }.opacity(0.5)
    }
    
    var body: some View {
        ZStack{
            BadgeBackground()
            GeometryReader {
                geo in
                badgeSymbols.scaleEffect(1.0/4.0, anchor: .top)
                    .position(x: geo.size.width/2.0, y: (3.0/4.0) * geo.size.height)
            }
        }.scaledToFit()
    }
}

#Preview {
    Badge()
}
