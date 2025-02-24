//
//  CountryCardView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 14/02/25.
//

import SwiftUI

struct CountryCardView: View {
    var country: Country
    @Binding var flipCard: Bool
    
    var body: some View {
        ZStack {
            Image(country.card)
                .rotation3DEffect(
                    .degrees(flipCard ? 0: 180),
                    axis: (x: 0, y: 1, z: 0)
                )
                .animation(.default, value: flipCard)
            Image(country.blankCard)
                .opacity(flipCard ? 0 : 1)
                .rotation3DEffect(
                    .degrees(flipCard ? 180 : 0),
                    axis: (x: 0, y: -1, z: 0)
                )
                .animation(.default, value: flipCard)
        }
    }
}

#Preview {
    CountryCardView(country: Countries.china.get, flipCard: .constant(false))
}
