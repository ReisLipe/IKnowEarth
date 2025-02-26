//
//  CutScene1.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

struct CutScene1: View {
    @EnvironmentObject var gameInfo: GameInfo
    
    // View Control
    @State private var nextSpeech: Bool = false
    @State private var scriptStep: Int = 0
    @State private var navigateToNextView: Bool = false
    
    // View Info
    @State private var script: [Speech] = []
    @State private var speech: Speech?
    @State private var currentView: AnyView = AnyView(EmptyView())
    
    
    var body: some View {
        VStack{
            ZStack{
                currentView
                VStack{
                    HStack{
                        Spacer()
                        Button {
                            navigateToNextView.toggle()
                        } label: {
                            GenericBtnStyle(text: "Skip", color: .alienGreen)
                        }
                        .padding()
                    }
                    Spacer()
                }
            }
            
        }
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $navigateToNextView) {FirstChallengeView().environmentObject(gameInfo)}
        .onAppear {
            script = gameInfo.getScene1()
            speech = script[0]
            currentView = updateCurrentView()
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
            currentView = updateCurrentView()
        } else {
            navigateToNextView.toggle()
        }
    }
    
    private func updateCurrentView() -> AnyView {
        switch scriptStep {
        case 0, 1:
            return AnyView(CharacterPresentationView(nextSpeech: $nextSpeech, speech: speech))
        case 2, 3, 4, 5:
            return AnyView(EarthBackgroundView(nextSpeech: $nextSpeech, speech: speech))
        case 6:
            return AnyView(StarrySkiesView(nextSpeech: $nextSpeech, speech: speech))
        case 7, 8:
            return AnyView(SunsetView(nextSpeech: $nextSpeech, speech: speech))
        default:
            return AnyView(NotAbleToLoadView())
        }
    }
}

#Preview {
    @StateObject var gameInfo = GameInfo()
    CutScene1()
        .environmentObject(gameInfo)
}
