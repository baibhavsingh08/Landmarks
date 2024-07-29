//
//  LandMarkRow.swift
//  Landmarks
//
//  Created by Raramuri on 29/07/24.
//

import SwiftUI

struct LandMarkRow: View {
    
    var landmark: LandMark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName:  "star.fill")
                    .foregroundStyle(.yellow)
            }
            
        }
    }
}

#Preview {
    Group {
        LandMarkRow(landmark: ModelData().landmarks[0])
        LandMarkRow(landmark:ModelData().landmarks[1])
        
    }
}
