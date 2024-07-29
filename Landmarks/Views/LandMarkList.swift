//
//  LandMarkList.swift
//  Landmarks
//
//  Created by Raramuri on 29/07/24.
//

import SwiftUI

struct LandMarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [LandMark] {
        modelData.landmarks.filter{
            landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks){
                    landmark in
                    
                    NavigationLink{
                        LandMarkDetail(landmark: landmark)
                    } label: {
                        LandMarkRow(landmark: landmark)
                        
                    }
                }
                
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")

        } detail: {
            Text("select")
        }
    }
}

#Preview {
    LandMarkList()
        .environment(ModelData())
}
