//
//  favoriteButton.swift
//  Landmarks
//
//  Created by Raramuri on 29/07/24.
//

import SwiftUI

struct favoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        })
    }
}

#Preview {
    favoriteButton(isSet: .constant(true))
}
