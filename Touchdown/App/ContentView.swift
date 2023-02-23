//
//  ContentView.swift
//  Touchdown
//
//  Created by Александр Карпов on 22.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBarView()
                .padding()
                .background(Color(.white))
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    FeaturedTabView()
                        .padding(.vertical)
                        .frame(height: UIScreen.main.bounds.width / 1.475)
                    
                    CategoryGridView()
                    
                    TitleView(title: "Helmets")
                    
                    LazyVGrid(columns: gridLayout, spacing: 15) {
                        ForEach(products) { product in
                            ProductItemView(product: product)
                        }
                    }
                    .padding(15)
                    
                    TitleView(title: "Brands")
                    BrandGridView()
                    
                    FooterView()
                        .padding(.horizontal)
                } //: VSTACK
            } //: SROLL
            
        } //: VSTACK
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
    }
}
