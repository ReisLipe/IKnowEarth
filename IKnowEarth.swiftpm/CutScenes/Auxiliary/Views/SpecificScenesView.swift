//
//  SpecificScenesView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

struct NotAbleToLoadView: View {
    var body: some View {
        Text("Not able to load the scene.")
            .font(.titleChallenge)
            .foregroundStyle(Color.errorRed)
    }
}

struct CharacterPresentationView: View {
    @Binding var nextSpeech: Bool
    let speech: Speech?
    
    var body: some View {
        ZStack{
            Color.deepSapceBlue
                .ignoresSafeArea(.all)
            
            if speech != nil {scene} else {NotAbleToLoadView()}
        }
    }
    
    var scene: some View {
        VStack{
            // Image
            Spacer()
            Image(speech!.speaker.image)
                .resizable()
                .scaledToFit()
                .frame(width: 184, height: 184)
                .shadow(radius: 16)
            Spacer()
            
            // TextBox
            SpeechView(nextText: $nextSpeech, showImage: false, speech: speech!)
                .id(speech!)
                .padding()
        }
    }
}

struct EarthBackgroundView: View {
    @Binding var nextSpeech: Bool
    let speech: Speech?
    
    var body: some View {
        ZStack{
            Color.spaceCadet
                .ignoresSafeArea(.all)
            
            if speech != nil {scene} else {NotAbleToLoadView()}
        }
    }
    
    var scene: some View {
        VStack{
            VStack{
                
                // Top Left Star
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 106, height: 106)
                    Spacer()
                }.padding(.horizontal)
                
                // Earth
                Image("Earth")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 184, height: 184)
                
                // Bottom Right Star
                HStack {
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 106, height: 106)
                }.padding(.horizontal)
            }
            
            Spacer()
            SpeechView(nextText: $nextSpeech, speech: speech!)
                .id(speech!)
                .padding()
        }
    }
}

struct StarrySkiesView: View {
    @Binding var nextSpeech: Bool
    let speech: Speech?
    
    var body: some View {
        ZStack{
            Color.nightSkyBlue
                .ignoresSafeArea(.all)
            
            if speech != nil {scene} else {NotAbleToLoadView()}
        }
    }
    
    var scene: some View {
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                }.padding(.horizontal)
                
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                }.padding(.horizontal)
            }
            VStack{
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech!)
                    .id(speech)
                    .padding()
            }
        }
    }
}

struct SunsetView: View {
    @Binding var nextSpeech: Bool
    let speech: Speech?
    
    var body: some View {
        ZStack{
            Color.nightSkyBlue
                .ignoresSafeArea(.all)
            
            if speech != nil {scene} else {NotAbleToLoadView()}
        }
    }
    
    var scene: some View {
        ZStack{
            GeometryReader { geometry in
                    Image("EarthBKG1")
                        .resizable()
                        .scaledToFill()
                        .frame(height: geometry.size.height+50)
                        .ignoresSafeArea()
                }
            
            VStack{
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech!)
                    .id(speech!)
                    .padding()
            }
        }
    }
}

#Preview {
    let speechTest = Speech(speaker: GameInfo.noCharacter, text: "No Text!")
    
//    SunsetView(
//        nextSpeech: .constant(false),
//        speech: speechTest
//    )
    
//    EarthBackgroundView(
//        skipText: .constant(false),
//        speech: .init(
//            speaker: .init(name: "Test", image: "Tutor"),
//            text: "Hello, earthlings!")
//    )
    
//    StarrySkiesView(
//        skipText: .constant(false),
//        speech: .init(
//            speaker: .init(name: "Test", image: "Tutor"),
//            text: "Hello, earthlings!")
//    )
    
    SunsetView(
        nextSpeech: .constant(false),
        speech: speechTest
    )
}
