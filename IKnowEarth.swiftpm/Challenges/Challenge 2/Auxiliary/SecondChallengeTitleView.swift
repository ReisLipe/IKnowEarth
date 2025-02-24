//
//  SecondChallengeTitleView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 15/02/25.
//

import SwiftUI

struct SecondChallengeTitleView: View {
    @State var introSubtitle: Bool
    
    var body: some View {
        ChallengeTitle(
            title: "The bigger population",
            subtitle: introSubtitle ? "Two countries will appear, drag away the country with the smaller number of earthlings living on it." : "Drag away the country with the smaller population."
        )
    }
}

#Preview {
    SecondChallengeTitleView(introSubtitle: true)
}
