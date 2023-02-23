//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Александр Карпов on 23.02.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
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
                .zIndex(1)
            
            //DetailButtomPart
            
            VStack(alignment: .center, spacing: 0) {
                
                // Raiting + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } //: SCROLL
                
                // Quantity + Favorite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // ADD to Cart
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
            } //: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            
        } //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                          green: shop.selectedProduct?.green ?? sampleProduct.green,
                          blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .ignoresSafeArea(.all, edges: .all)
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
