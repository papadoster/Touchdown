//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Александр Карпов on 22.02.2023.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {

        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
            }
        } //: TABVIEW
        .tabViewStyle(.page)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
