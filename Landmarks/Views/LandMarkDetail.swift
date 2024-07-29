//
//  LandMarkDetail.swift
//  Landmarks
//
//  Created by Raramuri on 29/07/24.
//

import SwiftUI

struct LandMarkDetail: View {
    @Environment(ModelData.self) var modelData

    var landmark: LandMark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            
            MapView(coordinates: landmark.locationCoordinates).frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    favoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                
                Text("About \(landmark.name)")
                Text(landmark.description)
                
                
            }.padding()
            
        }.navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
        return LandMarkDetail(landmark: modelData.landmarks[0])
            .environment(modelData)}
