//
//  SpeechView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

struct SpeechView: View {
    @Binding var nextText: Bool
    
    @State var showImage: Bool = true
    @State private var displayedText: String = ""
    @State private var currentIndex: Int = 0
    
    var speech: Speech
    
    
    var body: some View {
        VStack(alignment: speech.speaker.name == "Examiner Byluu" ? .leading : .trailing) {
            
            // MARK: Speaker Image
            ZStack {
                Circle()
                    .fill(Color.hopeWhite)
                    .frame(width: 128, height: 128)
                Circle()
                    .stroke(Color.noHopeBlack, lineWidth: 8)
                    .frame(width: 128, height: 128)
                Image(speech.speaker.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
            }.opacity(showImage ? 1 : 0)
            
            // MARK: Text Box
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.hopeWhite)
                    .frame(height: 132)
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.noHopeBlack, lineWidth: 8)
                    .foregroundStyle(Color.hopeWhite)
                    .frame(height: 132)
                VStack (alignment: .leading){
                    Text(displayedText)
                        .font(.speech)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
            }
        }
        .onAppear {
            startTyping()
        }
        .onChange(of: speech) { _ in
            reset()
            startTyping()
        }
    }
    
    private func reset() {
        currentIndex = 0
        displayedText = ""
    }
    
    private func startTyping() {
        reset()
        type()
    }
    
    private func type() {
        if currentIndex < speech.text.count {
            let index = speech.text.index(speech.text.startIndex, offsetBy: currentIndex)
            displayedText.append(speech.text[index])
            currentIndex += 1
            
            // Next iteration
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                type()
            }
        }
        else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                nextText = true
            }
        }
    }
}

#Preview {
    SpeechView(
        nextText: .constant(false),
        speech: .init(
            speaker: .init(type: .examinerByluu),
            text: "Fine, Mr. Zipin, you passed the Flying Saucer Test with a score of 6, but now you want to travel to Earth..."
        )
    )
}
