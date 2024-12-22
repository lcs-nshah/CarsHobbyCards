//
//  ContentView.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import SwiftUI

struct CardTabView: View {
    var body: some View {
        TabView {
            ForEach(cards) { currentCard in
                CardLayoutView(cardToShow: currentCard)
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(.page(indexDisplayMode: .never))
        .persistentSystemOverlays(.hidden)
    }
}

#Preview {
    CardTabView()
}
