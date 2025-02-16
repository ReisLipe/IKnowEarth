//
//  FirstChallengeTitleView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 14/02/25.
//

import SwiftUI

struct FirstChallengeTitleView: View {
    var body: some View {
        ChallengeTitle(
            title: "Name the country",
            subtitle: "Observe the flag and name the following country."
        )
    }
}

#Preview {
    FirstChallengeTitleView()
        .frame(height: 125)
        .padding()
}
