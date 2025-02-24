//
//  Speech.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

struct Speaker: Equatable {
    let name: String
    let image: String
}

struct Speech: Equatable {
    let speaker: Speaker
    let text: String
}

let examinerByluu: Speaker = Speaker(name: "Examiner Byluu", image: "Tutor")
let zipZiplyZipin: Speaker = Speaker(name: "Zip Ziply Zipin", image: "Player")

// 9 parts
let scene1Speech: [Speech] = [
    .init(speaker: examinerByluu, text: "Neeeext!"),
    .init(speaker: zipZiplyZipin, text: "Oh, greetings!"),
    .init(speaker: zipZiplyZipin, text: "I'm here for the Earth Driving License."),
    .init(speaker: examinerByluu, text: "Ok, your name is Zip Ziply Zipim. Is that correct?"),
    .init(speaker: zipZiplyZipin, text: "Zipin"),
    .init(speaker: examinerByluu, text: "Fine, Mr. ZipiN, you passed the Flying Saucer Test with a score of 6, not good, But now you want to travel to Earth."),
    .init(speaker: examinerByluu, text: "So you want to see the beutiful earth starry skies..."),
    .init(speaker: examinerByluu, text: "And the sunset at a sea of H2O, just like the earthlings..."),
    .init(speaker: examinerByluu, text: "Well, you must first pass through our test."),

]

// 3 parts
let scene2Speech: [Speech] = [
    .init(speaker: examinerByluu, text: "One less test down... but sigh still 332 hours of waiting until my turn is over."),
    .init(speaker: zipZiplyZipin, text: "I'm certain earth bureaucracy is less tedious, why don't you come along with me?"),
    .init(speaker: examinerByluu, text: "Yeah, yeah, sure. Lets just move to our next set of questions, ok?"),
]


