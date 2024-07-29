//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Raramuri on 29/07/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(ModelData())
        }
    }
}
