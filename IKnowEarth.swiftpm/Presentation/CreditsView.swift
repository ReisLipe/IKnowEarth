//
//  CreditsView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 24/02/25.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        ZStack{
            Color.spacePurple.edgesIgnoringSafeArea(.all)
            VStack{
                ScrollView {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 132, height: 132)
                        .padding()
                    Spacer()
                    
                    Text("Greetings, earthlings!")
                        .font(.titleChallenge)
                        .foregroundStyle(Color.alienGreen)
                    
                    VStack(spacing: 16) {
                        Text("My name is Filipe Reis and I'm a student at Apple Developer Academy - UFPE")
                            .font(.subtitleChallenge)
                            .foregroundStyle(Color.hopeWhite)
                            .multilineTextAlignment(.center)
                        Text("This game aims to be a small step toward improving knowledge about our planet and its people. I believe that through fun and smiles we can ease the hard processes of learning. And I hope that learning eases our coexistence on earth.")
                            .font(.subtitleChallenge)
                            .foregroundStyle(Color.hopeWhite)
                            .multilineTextAlignment(.center)
                        
                        VStack{
                            HStack{
                                Text("Pixelate font credits - ")
                                    .font(.subtitleChallenge)
                                    .foregroundStyle(Color.hopeWhite)
                                Text("IbraCreative")
                                    .font(.subtitleChallenge)
                                    .foregroundStyle(Color.alienGreen)
                            }
                            HStack{
                                Text("Press Start font credits - ")
                                    .font(.subtitleChallenge)
                                    .foregroundStyle(Color.hopeWhite)
                                Text("Cody \"CodeMan38\" Boisclair")
                                    .font(.subtitleChallenge)
                                    .foregroundStyle(Color.alienGreen)
                            }
                            
                            HStack{
                                Text("Font implementation code - ")
                                    .font(.subtitleChallenge)
                                    .foregroundStyle(Color.hopeWhite)
                                Text("Alessandra Pereira")
                                    .font(.subtitleChallenge)
                                    .foregroundStyle(Color.alienGreen)
                            }
                            HStack{
                                Text("Flag design - ")
                                    .font(.subtitleChallenge)
                                    .foregroundStyle(Color.hopeWhite)
                                Text("Jonas Bröms")
                                    .font(.subtitleChallenge)
                                    .foregroundStyle(Color.alienGreen)
                            }
                        }
                    }.padding()
                }
            }
        }
        
    }
}

#Preview {
    CreditsView()
}
