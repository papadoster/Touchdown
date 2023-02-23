//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Александр Карпов on 23.02.2023.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //Header
            
            HeaderDetailView()
                .padding(.horizontal)
            
            //DetailTopPart
            
            TopPartDetailView()
                .padding(.horizontal)
            
            //DetailButtomPart
            
            // Raiting + Sizes
            
            //Description
            
            // Quantity + Favorite
            
            // ADD to Cart
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)).ignoresSafeArea(.all, edges: .all)
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
