//
//  CutScene2.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 23/02/25.
//

import SwiftUI

struct CutScene2: View {
    @EnvironmentObject var gameInfo: GameInfo
    
    // View info
    @State var script: [Speech] = []
    @State var speech: Speech?
    @State var currentView: AnyView = AnyView(EmptyView())
    
    // View control
    @State var navigateToNextView: Bool = false
    @State var nextSpeech: Bool = false
    @State var scriptStep: Int = 0
    
    
    var body: some View {
        VStack {
            ZStack{
                currentView
                
                VStack {
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
        .navigationDestination(isPresented: $navigateToNextView) {SecondChallengeView().environmentObject(gameInfo)}
        .onAppear {
            script = gameInfo.getScene2()
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
        case 0, 1, 2:
            return AnyView(EarthBackgroundView(nextSpeech: $nextSpeech, speech: speech))
        default:
            return AnyView(NotAbleToLoadView())
        }
    }
}

#Preview {
    @StateObject var gameInfo: GameInfo = GameInfo()
    CutScene2().environmentObject(gameInfo)
}
