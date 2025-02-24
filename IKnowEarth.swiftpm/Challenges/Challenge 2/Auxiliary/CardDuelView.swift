//
//  CardDuelView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 16/02/25.
//

import SwiftUI

struct CardDuelView: View {
    let country1: Country
    let country2: Country
    @Binding var countryRemovedName: String
    
    @State private var offsetCountry1 = CGSize.zero
    @State private var offsetCountry2 = CGSize.zero
    @State private var deletionOpacityCountry1: Double = 0
    @State private var deletionOpacityCountry2: Double = 0
    
    var body: some View {
        HStack(spacing: 8) {
            ZStack {
                Image(country1.card)
                    .resizable()
                Color.red.opacity(deletionOpacityCountry1)
            }
            .scaledToFit()
            .offset(x: offsetCountry1.width, y: offsetCountry1.height * 0.4)
            .rotationEffect(.degrees(Double(offsetCountry1.width / 40)))
            .gesture(
                DragGesture()
                    .onChanged{gesture in
                        offsetCountry1 = gesture.translation
                        deletionOpacityCountry1 = deletionMask(width: offsetCountry1.width)
                    }
                    .onEnded{_ in discardCard(width: offsetCountry1.width, country: country1)}
            )
            
            ZStack{
                Image(country2.card)
                    .resizable()
                Color.red.opacity(deletionOpacityCountry2)
                    
            }
            .scaledToFit()
            .offset(x: offsetCountry2.width, y: offsetCountry2.height * 0.4)
            .rotationEffect(.degrees(Double(offsetCountry2.width / 40)))
            .gesture(
                DragGesture()
                    .onChanged{gesture in
                        offsetCountry2 = gesture.translation
                        deletionOpacityCountry2 = deletionMask(width: offsetCountry2.width)
                    }
                    .onEnded{_ in discardCard(width: offsetCountry2.width, country: country2)}
            )
            
            
        }
    }
    
    private func discardCard(width: CGFloat, country: Country) {
        switch width {
        case (-500)...(-100):
            print("Country \(country.name) eliminated")
            deletionOpacityCountry1 = 0
            deletionOpacityCountry2 = 0
            offsetCountry1 = CGSize.zero
            offsetCountry2 = CGSize.zero
            countryRemovedName = country.name
        case 100...500:
            print("Country \(country.name) eliminated")
            deletionOpacityCountry1 = 0
            deletionOpacityCountry2 = 0
            offsetCountry1 = CGSize.zero
            offsetCountry2 = CGSize.zero
            countryRemovedName = country.name
        default :
            deletionOpacityCountry1 = 0
            deletionOpacityCountry2 = 0
            offsetCountry1 = CGSize.zero
            offsetCountry2 = CGSize.zero
        }
    }
    
    private func deletionMask(width: CGFloat) -> Double {
        switch width {
        case (-500)...(-100):
            return 0.8
        case 100...500:
            return 0.8
        default:
            return 0
        }
    }
}

#Preview {
    CardDuelView(
        country1: Countries.brazil.get,
        country2: Countries.angola.get,
        countryRemovedName: .constant("")
    )
}
