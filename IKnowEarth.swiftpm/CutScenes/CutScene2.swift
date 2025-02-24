//
//  CutScene2.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 23/02/25.
//

import SwiftUI

struct CutScene2: View {
    @State var navigateToNextView: Bool = false
    @State var nextSpeech: Bool = false
    @State var scriptStep: Int = 0
    @State var speech: Speech = scene2Speech[0]
    @State var currentView: AnyView = AnyView(EmptyView())
    
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
        .onAppear {
            currentView = updateCurrentView()
        }
        .onChange(of: nextSpeech, perform: { _ in
            if nextSpeech {
                nextScene()
                currentView = updateCurrentView()
            }
        })
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $navigateToNextView) {SecondChallengeView()}
    }
    
    private func nextScene() {
        if scriptStep < scene2Speech.count - 1 {
            scriptStep += 1
            speech = scene2Speech[scriptStep]
            nextSpeech = false
        } else {
            navigateToNextView.toggle()
        }
    }
    
    private func updateCurrentView() -> AnyView {
        switch scriptStep {
        case 0:
            return AnyView(EarthBackground1Scene2View(nextSpeech: $nextSpeech, speech: speech))
        case 1:
            return AnyView(EarthBackground2Scene2View(nextSpeech: $nextSpeech, speech: speech))
        case 2:
            return AnyView(EarthBackground3Scene2View(nextSpeech: $nextSpeech, speech: speech))
        default:
            return AnyView(EmptyView())
        }
    }
}

#Preview {
    CutScene2()
}
