//
//  GameInfo.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 24/02/25.
//

import SwiftUI

class GameInfo: ObservableObject {
    @Published var totalErrors: Int = 0
    @Published var game1Rounds: Int = 5
    @Published var game2Rounds: Int = 10
    
    // MARK: - Characters
    static let examinerByluu: Speaker = Speaker(type: .examinerByluu)
    static let zipZiplyZipin: Speaker = Speaker(type: .zipZiplyZipin)
    static let noCharacter: Speaker = Speaker(type: .noCharacter)
    
    // MARK: - Functions
    func getAverage() -> Double {
        return Double(calculateAverage())!
    }
    
    func resetEverything() {
        totalErrors = 0
    }
    
    // MARK: - Speechs
    func getScene1() -> [Speech] {
        return [ .init(speaker: GameInfo.examinerByluu, text: "Neeeext!"), .init(speaker: GameInfo.zipZiplyZipin, text: "Oh, greetings!"), .init(speaker: GameInfo.zipZiplyZipin, text: "I'm here for the Earth Driving License."), .init(speaker: GameInfo.examinerByluu, text: "Ok, your name is Zip Ziply Zipim. Is that correct?"), .init(speaker: GameInfo.zipZiplyZipin, text: "Zipin."), .init(speaker: GameInfo.examinerByluu, text: "Fine, Mr. ZipiN, you passed the Flying Saucer Test with a score of 6, not good, But now you want to travel to Earth."), .init(speaker: GameInfo.examinerByluu, text: "So you want to see the beautiful earth starry skies..."), .init(speaker: GameInfo.examinerByluu, text: "And the sunset at a sea of H2O, just like the earthlings..."), .init(speaker: GameInfo.examinerByluu, text: "Well, you must first pass through our test.")]
    }
    
    func getScene2() -> [Speech] {
        return [.init(speaker: GameInfo.examinerByluu, text: "One less test down... but sigh still 332 hours of waiting until my turn is over."), .init(speaker: GameInfo.zipZiplyZipin, text: "I'm certain earth bureaucracy is less tedious, why don't you come along with me?"), .init(speaker: GameInfo.examinerByluu, text: "Yeah, yeah, sure. Lets just move to our next set of questions, ok?")]
    }
    
    func getScene3Good() -> [Speech] {
        return [.init(speaker: GameInfo.examinerByluu, text: "Your total number of errors was \(totalErrors) and your average was \(calculateAverage())."), .init(speaker: GameInfo.examinerByluu, text: "Well, this means you are able to fly on earth. Go see your sunset."), .init(speaker: GameInfo.zipZiplyZipin, text: "Yesss!! Earth, I see you in 70 years!!!")]
    }
    
    func getScene3Bad() -> [Speech] {
        return [.init(speaker: GameInfo.examinerByluu, text: "Your total number of errors was \(totalErrors) and your average was \(calculateAverage())."), .init(speaker: GameInfo.examinerByluu, text: "Unfortunately, this means you'll have to wait 800 days before you can retest your ability to fly on earth."), .init(speaker: GameInfo.zipZiplyZipin, text: "800 days?! Come on!!")]
    }
    
    // MARK: - Private Functions
    private func calculateAverage() -> String {
        let totalRounds = game1Rounds + game2Rounds
        let average = (Float(totalRounds - totalErrors)/Float(totalRounds)) * 10
        
        return String(format: "%.00f", average)
    }
}
