//
//  FirstChallengeView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 13/02/25.
//

import SwiftUI

// TODO: impedir usuário de enviar espaço
struct FirstChallengeView: View {
    
    // MARK: - Properties
    @State private var countrySelected: Country? = nil
    @State private var countriesPicked: [String] = []
    @State private var playerAnswer: String = ""
    @State private var correctAnswer: Bool = false
    @State private var backgroundColor: Color = .spaceCadet
    @State private var numberOfErrors: Int = 0
    @State private var numberOfPlays: Int = 0
    @State private var flipCard: Bool = false
    @State private var textFieldPlaceholder: String = "Insert the country name"
    @State private var errorMessage: String = "No error"
    @State private var errorWarning: Bool = false
    @State private var understoodChallenge: Bool = false
    @State private var navigateToNextView: Bool = false
    
    // MARK: - Let Properties
    private let numberOfCountriesToPick: Int = 5
    private let animationDuration: Float = 2
    
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
            VStack {
                VStack{
                    Spacer()
                    FirstChallengeTitleView(introSubtitle: !understoodChallenge)
                        .animation(.easeInOut(duration: 0.5), value: understoodChallenge)
                    Spacer()
                }
                ZStack {
                    if understoodChallenge {
                        challengeContent
                            .transition(.opacity.combined(with: .move(edge: .bottom)))
                    } else {
                        GotItBtn
                    }
                }
                .animation(.easeInOut(duration: 0.5), value: understoodChallenge)
            }
            .padding(.horizontal, 16)
        }
        .onAppear{countrySelected = getRandomCountry()}
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $navigateToNextView) {CutScene2()}
    }
    
    // MARK: Views
    private var challengeContent: some View {
        VStack {
            if let countrySelected {
                CountryCardView(country: countrySelected, flipCard: $flipCard)
                Spacer()
                AnswerInputSection
            } else {
                Text("Error: No Country Selected")
                    .font(.titleChallenge)
                    .foregroundStyle(Color.errorRed)
            }
        }
    }
    
    private var GotItBtn: some View {
        VStack{
            // Spacer()
            Button {understoodChallenge.toggle()} label: {
                GenericBtnStyle(text: "Got it.", color: Color.alienGreen)
            }
        }
    }
    
    private var AnswerInputSection: some View {
        VStack(spacing: 8) {
            // Text Field
            TextFieldView(text: $playerAnswer, placeholder: textFieldPlaceholder, color: .battleshipSilver)
            
            // Hidden Error Message
            Text(errorMessage)
                .font(.subtitleChallenge)
                .foregroundStyle(Color.errorRed)
                .opacity(errorWarning ? 1 : 0)
            
            // Check Button
            Button {
                if isAnswerValid() {
                    numberOfPlays += 1
                    checkIfNameIsCorrect()
                }
            } label: {
                GenericBtnStyle(text: "Check!", color: Color.alienGreen)
            }
        }
    }
    
    // MARK: Functions
    private func getRandomCountry() -> Country? {
        if countriesPicked.count == countriesList.count {
            print("All countries have been picked.")
            return nil
        }
        
        while true {
            let randomCountry = countriesList.randomElement()!
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
            backgroundColor = .alienGreen
            flipCard.toggle()
        } else {
            numberOfErrors += 1
            backgroundColor = .errorRed
            flipCard.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + TimeInterval(animationDuration)) {
            backgroundColor = .spaceCadet
            playerAnswer = ""
            
            if numberOfPlays < numberOfCountriesToPick {
                flipCard.toggle()
                countrySelected = getRandomCountry()
            } else {
                totalGameErrors += numberOfErrors
                print("\(numberOfErrors)")
                print("\(totalGameErrors)")
                navigateToNextView.toggle()
            }
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
