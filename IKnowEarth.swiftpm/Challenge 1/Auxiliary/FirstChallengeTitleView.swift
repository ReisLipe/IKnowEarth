//
//  FirstChallengeTitleView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 14/02/25.
//

import SwiftUI

struct FirstChallengeTitleView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 5)
                .foregroundStyle(Color.spacePurple)
            
            VStack(spacing: 16){
                Text("Name the country")
                    .multilineTextAlignment(.center)
                    .font(.TitleChallenge)
                    .foregroundStyle(Color.spacePurple)
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.spacePurple)
                Text("Observe the flag and name the following country.")
                    .multilineTextAlignment(.center)
                    .font(.SubtitleChallenge)
                    .foregroundStyle(Color.spacePurple)
            }
        }
    }
}

#Preview {
    FirstChallengeTitleView()
        .frame(height: 125)
}
