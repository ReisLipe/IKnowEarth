//
//  ChallengeTitle.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 15/02/25.
//

import SwiftUI

struct ChallengeTitle: View {
    @State var title: String
    @State var subtitle: String
    
    var body: some View {
            VStack(spacing: 16){
                Text(title.uppercased())
                    .multilineTextAlignment(.center)
                    .font(.titleChallenge)
                    .foregroundStyle(Color.noHopeBlack)
                    .padding(.top)
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.battleshipSilver)
                Text(subtitle)
                    .multilineTextAlignment(.center)
                    .font(.subtitleChallenge)
                    .foregroundStyle(Color.noHopeBlack)
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            .background {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.hopeWhite)
                        .foregroundStyle(Color.battleshipSilver)
                        .shadow(radius: 8, x:8, y:8)
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 5)
                        .foregroundStyle(Color.battleshipSilver)
                }
            }
    }
}

#Preview {
    ChallengeTitle(
        title: "Title comes here.",
        subtitle: "The first step is simple, you'll see an Earthly flag and must name the landmass that humanity has agreed to call a country. You just need to name that country."
    )
    //.frame(height: 168)
    .padding()
}
