//
//  SecondChallengeView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 15/02/25.
//

import SwiftUI

struct SecondChallengeView: View {
    @State private var countriesPicked: [String] = []
    @State private var randomCountries: [Country] = []
    
    private let C2Countries: [Country] = [
        testCountries.bra.get,
        testCountries.chi.get,
        testCountries.lyb.get
        // TODO: Change this later
    ]
    
    var body: some View {
        VStack(spacing: 35){
            // Title
            SecondChallengeTitleView()
                .frame(height: 125)
                .padding(.horizontal, 16)
            
            Spacer()
            
            // Game
            if randomCountries.count >= 2 {
               CardDuelView(country1: randomCountries[0], country2: randomCountries[1])
            } else {
                Text("Error: No countries selected")
                    .font(.titleChallenge)
                    .foregroundStyle(Color.spacePurple)
            }
            
            Spacer()
        }
        .padding()
        .onAppear {
            getRandomCountries()
        }
    }
    
    private func getRandomCountries() {
        if countriesPicked.count == C2Countries.count {
            print("All countries have been picked.")
        } else {
            var attempts = 0
            let maxAttempts = 10
            
            while randomCountries.count < 2, attempts < maxAttempts {
                let randomCountry = C2Countries.randomElement()!
                print("Random Country Selected - \(randomCountry.name)")
                
                if !countriesPicked.contains(randomCountry.name) {
                    print("Random country wasn't picked")
                    countriesPicked.append(randomCountry.name)
                    randomCountries.append(randomCountry)
                }
                attempts += 1
                print("Random country was already picked")
            }
        }
    }
}

#Preview {
    SecondChallengeView()
}
