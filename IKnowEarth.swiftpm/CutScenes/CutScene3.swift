//
//  CutScene3.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 24/02/25.
//

import SwiftUI

struct CutScene3: View {
    // View
    @State private var navigateToNextView = false
    @State private var nextSpeech: Bool = false
    @State private var scriptStep: Int = 0
    @State private var result: AnyView = AnyView(EmptyView())
    
    // Info
    @State private var totalErrors: Int = 0
    @State private var average: Float = 0.0
    @State private var speechList: [Speech] = []
    @State private var speech: Speech = scene2Speech[0]
    
    
    var body: some View {
        VStack{
            result
        }
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $navigateToNextView) {CreditsView()}
        .onAppear {
            calculateTotal()
            speechList = getSpeech()
            speech = speechList[0]
            result = updateResult()
        }
        .onChange(of: nextSpeech, perform: { _ in
            if nextSpeech {
                if scriptStep < speechList.count - 1 {
                    nextScene()
                    result = updateResult()
                    print("scriptStep: \(scriptStep)")
                    print("\(speech)")
                }
                navigateToNextView = true
            }
        })
    }
    
    private func nextScene() {
        scriptStep += 1
        speech = speechList[scriptStep]
        nextSpeech = false
    }
    
    private func calculateTotal() {
        totalErrors = totalGameErrors
        average = (Float(15 - totalErrors)/Float(15)) * 10
    }
    
    private func getSpeech() -> [Speech] {
        if average < 6 {
            return [
                .init(speaker: examinerByluu, text: "Your total number of errors was \(totalErrors) and your average was \(average)."),
                .init(speaker: examinerByluu, text: "Unfortunately, this means you'll have to wait 800 days before you can retest your ability to fly on earth."),
                .init(speaker: zipZiplyZipin, text: "800 days?! Come on!!"),
            ]
        } else {
            return [
                .init(speaker: examinerByluu, text: "Your total number of errors was \(totalErrors) and your average was \(average)."),
                .init(speaker: examinerByluu, text: "Well, this means you are able to fly on earth. Go see your sunset."),
                .init(speaker: zipZiplyZipin, text: "Yesss!! Earth, I see you in 70 years!!!"),
            ]
        }
    }
    
    private func updateResult() -> AnyView {
        switch scriptStep {
        case 0:
            return AnyView(Result1View(nextSpeech: $nextSpeech, speech: speech))
        case 1:
            return AnyView(Result2View(nextSpeech: $nextSpeech, speech: speech))
        case 2:
            return AnyView(Result3View(nextSpeech: $nextSpeech, speech: speech))
        default:
            return AnyView(EmptyView())
        }
    }
}

#Preview {
    CutScene3()
}
