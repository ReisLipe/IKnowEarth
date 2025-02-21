//
//  ChallengeTitle.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 15/02/25.
//

import SwiftUI

struct ChallengeTitle: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 5)
                .foregroundStyle(Color.spacePurple)
            
            VStack(spacing: 16){
                Text(title.uppercased())
                    .multilineTextAlignment(.center)
                    .font(.titleChallenge)
                    .foregroundStyle(Color.spacePurple)
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.spacePurple)
                Text(subtitle)
                    .multilineTextAlignment(.center)
                    .font(.subtitleChallenge)
                    .foregroundStyle(Color.spacePurple)
            }
        }
    }
}

#Preview {
    ChallengeTitle(
        title: "Title comes here.",
        subtitle: "Some small explanation for the challenge."
    )
    .frame(height: 152)
    .padding()
}
