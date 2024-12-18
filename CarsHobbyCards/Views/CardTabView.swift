//
//  ContentView.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import SwiftUI

struct CardTabView: View {
    var body: some View {
        Triquetra()
            .stroke(
                Color.black,
                style: StrokeStyle(
                    lineWidth: 4,
                    lineCap: .round,
                    lineJoin: .round
                )
            )
            .fill(Color.clear)
            .aspectRatio(1.0/1.0, contentMode: .fit)
        // TabView {
           // ForEach(cards) { currentCard in
            //    CardLayoutView(cardToShow: currentCard)
          //  }
        //}
    }
}

#Preview {
    CardTabView()
}
