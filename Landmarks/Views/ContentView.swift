//
//  ContentView.swift
//  Landmarks
//
//  Created by Raramuri on 29/07/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        LandMarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
