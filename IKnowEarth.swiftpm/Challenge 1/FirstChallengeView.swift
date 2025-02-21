//
//  FirstChallengeView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 13/02/25.
//

import SwiftUI

// TODO: impedir usuário de enivar string vazia
// TODO: impedir usuário de enviar espaço
// TODO: posso colocar uma máscara na carta ao invés de mudar toda a cor da tela.

struct FirstChallengeView: View {
    
    // MARK: - Properties
    @State private var countrySelected: Country? = nil
    @State private var countriesPicked: [String] = []
    @State private var playerAnswer: String = ""
    @State private var correctAnswer: Bool = false
    @State private var backgroundColor: Color = .white
    @State private var numberOfErrors: Int = 0
    @State private var flipCard: Bool = false
    @State private var textFieldPlaceholder: String = "Insert the country name"
    @State private var errorMessage: String = "No error"
    @State private var errorWarning: Bool = false
    
    // MARK: - Let Properties
    private let numberOfCountriesToPick: Int = 3 //TODO: Change this later
    private let animationDuration: Float = 2
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
            
            // Content
            VStack(){
                
                // Title
                FirstChallengeTitleView()
                    .frame(height: 104)
                
                Spacer()
                
                if let countrySelected {
                    // Card
                    CountryCardView(country: countrySelected, flipCard: $flipCard)
                    
                    Spacer()
                    
                    VStack(spacing: 8) {
                        // Text Field
                        TextFieldView(text: $playerAnswer, placeholder: textFieldPlaceholder, color: .spacePurple)
                        
                        // Hidden Error Message
                        Text(errorMessage)
                            .font(.subtitleChallenge)
                            .foregroundStyle(Color.errorRed)
                            .opacity(errorWarning ? 1 : 0)
                        
                        // Check Button
                        Button {
                            if isAnswerValid() {
                                checkIfNameIsCorrect()
                            }
                        } label: {
                            GenericBtnStyle(text: "Check!", color: Color.alienGreen)
                        }
                    }
                    
                    
                } else {
                    Text("Error: No Country Selected")
                        .font(.titleChallenge)
                        .foregroundStyle(Color.spacePurple)
                }
            }.padding(.horizontal, 16)
        }
        .onAppear{countrySelected = getRandomCountry()}
        .navigationBarBackButtonHidden()
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
            flipCard.toggle()
        } else {
            correctAnswer = false
            backgroundColor = .red
            flipCard.toggle()
        }
        
        // Revert background to white and select a new country
        DispatchQueue.main.asyncAfter(deadline: .now() + TimeInterval(animationDuration)) {
            backgroundColor = .white
            playerAnswer = ""
            flipCard.toggle()
            countrySelected = getRandomCountry()
        }
    }
    
    private func isAnswerValid() -> Bool {
        if playerAnswer.isEmpty {
            errorMessage =  "You inserted no name, fool!!"
            errorWarning = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + TimeInterval(animationDuration)) {
                errorWarning = false
            }
            
            return false
        }
        return true
    }
}

#Preview {
    FirstChallengeView()
}
