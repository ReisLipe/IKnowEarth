//
//  SecondChallengeView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 15/02/25.
//

import SwiftUI

struct SecondChallengeView: View {
    // Country Mechanics
    @State private var countriesPicked: [String] = []
    @State private var randomCountries: [Country] = []
    @State private var removedCountryName: String = ""
    @State private var firstCountryIndex: Int = 0
    @State private var secondCountryIndex: Int = 0
    
    // Info
    @State private var backgroundColor: Color = .spaceCadet
    @State private var numberOfPlays: Int = 0
    @State private var maxNumberOfPlays: Int = 10
    @State private var numberOfErrors: Int = 0
    @State private var animationDuration: Double = 2
    @State private var understoodChallenge: Bool = false
    @State private var navigateToNextView: Bool = false
    
    
    var body: some View {
        ZStack {
            // Background Color
            backgroundColor
                .edgesIgnoringSafeArea(.all)
                .animation(
                    .easeInOut(duration: TimeInterval(animationDuration)),
                    value: backgroundColor
                )
            VStack(){
                VStack {
                    // Title
                    if !understoodChallenge {
                        Spacer()
                    }
                    SecondChallengeTitleView(introSubtitle: !understoodChallenge)
                        .padding(.top)
                    Spacer()
                }
                ZStack{
                    if understoodChallenge {
                        challengeContent
                            .transition(.opacity.combined(with: .move(edge: .bottom)))
                        
                    } else {
                        gotItBtn
                    }
                }
                .animation(.easeInOut(duration: 0.5), value: understoodChallenge)
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $navigateToNextView) {CutScene3()}
        .onAppear {
            fillRandomCountriesArray()
        }
        .onChange(of: removedCountryName, perform: { removedCountry in
            print("Removed Country: \(removedCountry)")
            
            numberOfPlays += 1
            checkChoice(removedCountryName: removedCountry)
            if numberOfPlays < maxNumberOfPlays {
                replaceRemovedCountry(removedCountryName: removedCountry)
            } else {
                totalGameErrors += numberOfErrors
                print("\(numberOfErrors)")
                print("\(totalGameErrors)")
                
                navigateToNextView = true
            }
        })
    }
    
    // MARK: Views
    private var challengeContent: some View {
        VStack{
            if randomCountries.count == 2 {
                // Spacer()
                CardDuelView(
                    country1: randomCountries[0],
                    country2: randomCountries[1],
                    countryRemovedName: $removedCountryName
                )
                Spacer()
                Spacer()
            } else {
                Text("Error: No countries selected")
                    .font(.titleChallenge)
                    .foregroundStyle(Color.errorRed)
            }
        }
    }
    
    private var gotItBtn: some View {
        VStack{
            Button {understoodChallenge.toggle()} label: {
                GenericBtnStyle(text: "Got it.", color: Color.alienGreen)
            }
        }
    }
    
    // MARK: Functions
    private func replaceRemovedCountry(removedCountryName: String) {
        for index in 0..<randomCountries.count {
            if removedCountryName == randomCountries[index].name {
                randomCountries[index] = getRandomCountry()!
                print("random countries size: \(randomCountries.count)")
            }
        }
    }
    
    private func getRandomCountry() -> Country? {
        var country: Country?
        while country == nil {
            let randomCountry = countriesList.randomElement()! // TODO: use guard let later
            if !countriesPicked.contains(randomCountry.name) {
                countriesPicked.append(randomCountry.name)
                country = randomCountry
            }
        }
        return country
    }
    
    private func fillRandomCountriesArray() {
        while randomCountries.count < 2 {
            if let randomCountry = getRandomCountry() {
                randomCountries.append(randomCountry)
            } else {
                print("Not able to fill the random countries array.")
            }
        }
    }
    
    private func checkChoice(removedCountryName: String) {
        var countryRemoved: Country?
        var countryKept: Country?
        
        // Get countries
        for index in 0..<randomCountries.count {
            if removedCountryName == randomCountries[index].name {
                countryRemoved = randomCountries[index]
            } else {
                countryKept = randomCountries[index]
            }
        }
        
        // Check choice
        if countryRemoved!.population > countryKept!.population {
            numberOfErrors += 1
            backgroundColor = .errorRed
        } else {
            backgroundColor = .alienGreen
        }
        
        // Reset background Color
        DispatchQueue.main.asyncAfter(deadline: .now() + TimeInterval(animationDuration)) {
            backgroundColor = .spaceCadet
        }
    }
}

#Preview {
    SecondChallengeView()
}
