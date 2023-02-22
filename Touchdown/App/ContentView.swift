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
            Spacer()
            FooterView()
                .padding(.horizontal)
        } //: VSTACK
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
