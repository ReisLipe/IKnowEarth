//
//  FirstChallengeTitleView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 14/02/25.
//

import SwiftUI

struct FirstChallengeTitleView: View {
    @State var introSubtitle: Bool
    
    var body: some View {
        ChallengeTitle(
            title: "Name the country",
            subtitle: introSubtitle ? "The first step is simple, you'll see an Earthly flag and must name the landmass that humanity has agreed to call a country. You just need to name that country." : "Observe the flag and name the following country."
        )
    }
}

#Preview {
    FirstChallengeTitleView(introSubtitle: true)
        .padding()
}
