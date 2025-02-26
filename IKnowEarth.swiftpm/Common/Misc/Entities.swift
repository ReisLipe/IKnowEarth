//
//  Speech.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

enum SpeakerType: String {
    case examinerByluu = "Examiner Byluu"
    case zipZiplyZipin = "Zip Ziply Zipin"
    case noCharacter = "Test Character"
    
    var image: String {
        switch self {
        case .examinerByluu: return "Tutor"
        case .zipZiplyZipin: return "Player"
        case .noCharacter: return "heart.fill"
        }
    }
}

struct Speaker: Equatable, Hashable {
    let type: SpeakerType
    var name: String { type.rawValue }
    var image: String { type.image }
}

struct Speech: Equatable, Hashable {
    let id = UUID()
    let speaker: Speaker
    let text: String
}

struct Country: Equatable {
    let name: String
    let card: String
    let blankCard: String
    let capital: String
    let population: Int
    let area: Double
}
