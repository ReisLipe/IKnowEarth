//
//  CutScene1.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

struct CutScene1: View {
    @State private var nextSpeech: Bool = false
    @State private var scriptStep: Int = 0
    @State private var scriptSpeech: Speech = scene1Speech[0]
    @State private var currentView: AnyView = AnyView(EmptyView())
    @State private var navigateToNextView: Bool = false
    
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
        .onChange(of: nextSpeech, perform: { _ in
            if nextSpeech {
                nextScene()
                currentView = updateCurrentView()
            }
        })
        .onAppear {
            currentView = updateCurrentView()
        }
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $navigateToNextView) {FirstChallengeView()}
    }
    
    private func nextScene() {
        if scriptStep < scene1Speech.count - 1 {
            scriptStep += 1
            scriptSpeech = scene1Speech[scriptStep]
            nextSpeech = false
            print(scriptStep)
            print(scriptSpeech.text)
        } else {
            navigateToNextView.toggle()
        }
    }
    
    private func updateCurrentView() -> AnyView {
        switch scriptStep {
        case 0:
            return AnyView(CharacterPresentation1View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        case 1:
            return AnyView(CharacterPresentation2View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        case 2:
            return AnyView(EarthBackground1View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        case 3:
            return AnyView(EarthBackground2View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        case 4:
            return AnyView(EarthBackground3View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        case 5:
            return AnyView(EarthBackground4View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        case 6:
            return AnyView(StarrySkies1View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        case 7:
            return AnyView(Sunset1View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        case 8:
            return AnyView(Sunset2View(nextSpeech: $nextSpeech, speech: scriptSpeech))
        default:
            return AnyView(EmptyView())
        }
    }
}

#Preview {
    CutScene1()
}
