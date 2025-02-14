//
//  FristChallengeView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 13/02/25.
//

import SwiftUI

struct Challenge1View: View {
    
    // MARK: - Properties
    @State private var countrySelected: Country? = nil
    @State private var countriesPicked: [String] = []
    @State private var playerAnswer: String = ""
    @State private var correctAnswer: Bool = false
    @State private var backgroundColor: Color = .white
    @State private var numberOfErrors: Int = 0
    
    // MARK: - Private Properties
    private let animationDuration: Float = 0.5
    private let C1Countries: [Country] = [
        testCountries.bra.get,
        testCountries.chi.get,
        testCountries.lyb.get
        // TODO: Change this later
    ]
    
    
    var body: some View {
        ZStack {
            // Background Color
            backgroundColor
                .edgesIgnoringSafeArea(.all)
                .animation(
                    .easeInOut(duration: TimeInterval(animationDuration)),
                    value: backgroundColor
                )
            
            
            VStack(spacing: 32){
                // Title
                FirstChallengeTitleView()
                    .frame(height: 125)
                    .padding(.horizontal, 16)
                
                // Game
                VStack (spacing: 32) {
                    if let countrySelected {
                        // Card
                        Image(countrySelected.blankCard)
                        
                        // Text Field
                        TextFieldView(text: $playerAnswer)
                        
                        // Check Button
                        Button { checkIfNameIsCorrect() } label: {
                            GenericBtnStyle(text: "Check", color: Color.alienGreen)
                        }

                    } else {
                        Text("Error: No Country Selected")
                            .font(.TitleChallenge)
                            .foregroundStyle(Color.spacePurple)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .onAppear{countrySelected = getRandomCountry()}
    }
    
    
    private func getRandomCountry() -> Country? {
        if countriesPicked.count == C1Countries.count {
            print("All countries have been picked.")
            return nil
        }
        
        while true {
            let randomCountry = C1Countries.randomElement()!
            print("Random Country Selected - \(randomCountry.name)")
            
            if !countriesPicked.contains(randomCountry.name) {
                print("Random country wasn't picked")
                countriesPicked.append(randomCountry.name)
                return randomCountry
            }
            
            print("Random country was already picked")
        }
        
        return nil
    }
    
    
    private func checkIfNameIsCorrect() {
        if playerAnswer.uppercased() == countrySelected!.name.uppercased() {
            correctAnswer = true
            backgroundColor = .alienGreen
        } else {
            correctAnswer = false
            backgroundColor = .red
        }
        
        // Revert background to white and select a new country
        DispatchQueue.main.asyncAfter(deadline: .now() + TimeInterval(animationDuration)) {
            backgroundColor = .white
            playerAnswer = ""
            countrySelected = getRandomCountry()
        }
    }
}

#Preview {
    Challenge1View()
}
