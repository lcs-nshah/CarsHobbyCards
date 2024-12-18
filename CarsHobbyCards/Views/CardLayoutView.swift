//
//  CardLayoutView.swift
//  CarsHobbyCards
//
//  Created by Neil Shah on 2024-12-18.
//

import SwiftUI

struct CardLayoutView: View {
    
    // MARK: Stored Property
    let cardToShow: Card
    
    // MARK: Computed Property
    var body: some View {
        HStack {
            Text(cardToShow.name)
        }
    }
}

#Preview {
    CardLayoutView(cardToShow: porsche)
}
