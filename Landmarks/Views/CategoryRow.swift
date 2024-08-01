//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Raramuri on 31/07/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [LandMark]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack(alignment: .leading){
                Text(categoryName).font(.title)
                HStack{
                    ForEach(items) { item in
                        VStack(alignment: .leading){
                            item.image.resizable()
                                .frame(width: 155, height: 155)
                                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                            
                            Text(item.name)
                                .font(.caption)
                            
                        }.padding(.leading,10)
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryRow(categoryName: ModelData().landmarks[0].category.rawValue, items: Array(ModelData().landmarks.prefix(3)))
}
