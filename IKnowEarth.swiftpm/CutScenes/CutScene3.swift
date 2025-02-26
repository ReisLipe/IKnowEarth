//
//  CutScene3.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 24/02/25.
//

import SwiftUI

struct CutScene3: View {
    @EnvironmentObject var gameInfo: GameInfo
    
    // View Control
    @State private var navigateToNextView = false
    @State private var nextSpeech: Bool = false
    @State private var scriptStep: Int = 0
    @State private var currentView: AnyView = AnyView(EmptyView())
    
    // View Info
    @State private var script: [Speech] = []
    @State private var speech: Speech?
    @State private var average: Double = 0.0
    
    var body: some View {
        VStack{
            currentView
        }
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $navigateToNextView) {
            Openning().environmentObject(gameInfo)
        }
        .onAppear {
            loadCorrectScript()
            speech = script[0]
            currentView = updateResult()
        }
        .onChange(of: nextSpeech, perform: { _ in
            if nextSpeech {
                nextScene()
            }
        })
    }
    
    private func nextScene() {
        if scriptStep < script.count - 1 {
            scriptStep += 1
            speech = script[scriptStep]
            nextSpeech = false
            currentView = updateResult()
        } else {
            gameInfo.resetEverything()
            navigateToNextView.toggle()
        }
    }
    
    private func loadCorrectScript() {
        if gameInfo.getAverage() > 6 {
            script = gameInfo.getScene3Good()
        } else {
            script = gameInfo.getScene3Bad()
        }
    }
        
    private func updateResult() -> AnyView {
        switch scriptStep {
        case 0, 1, 2:
            return AnyView(EarthBackgroundView(nextSpeech: $nextSpeech, speech: speech))
        default:
            return AnyView(EmptyView())
        }
    }
}

#Preview {
    @StateObject var gameInfo: GameInfo = GameInfo()
    CutScene3()
        .environmentObject(gameInfo)
}
