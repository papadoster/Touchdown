//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Александр Карпов on 23.02.2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(content: {
                    ForEach(categories) { category in
                                            CategoryItemView(category: category)
                                        }
                }, header: {
                    SectionView(rotateClockwise: false)
                }, footer: {
                    SectionView(rotateClockwise: true)
                })
                    
                
                
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.device)
            .padding()
            .background(colorBackground)
    }
}
