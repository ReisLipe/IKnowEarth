//
//  SpeechView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

struct SpeechView: View {
    @Binding var nextText: Bool
    
    @State var speech: Speech
    @State var showImage: Bool = true
    @State var text: String = ""
    
    
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
                    Text(text)
                        .font(.speech)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
            }
            .onAppear {
                write()
            }
        }
    }
    
    private func write(at position: Int = 0) {
        if text.count < speech.text.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                text.append(speech.text[position])
                write(at: position + 1)
            }
        } else if nextText == false {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                nextText = true
            }
        }
    }
}

#Preview {
    SpeechView(
        nextText: .constant(false),
        speech: .init(
            speaker: .init(name: "No Name", image: "Tutor"),
            text: "Fine, Mr. Zipin, you passed the Flying Saucer Test with a score of 6, but now you want to travel to Earth..."
        )
    )
}
