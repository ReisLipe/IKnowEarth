//
//  GenericBtnStyle.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 10/02/25.
//

import SwiftUI

struct GenericBtnStyle: View {
    let text: String?
    let color: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(color)
                .frame(width: 112, height: 40)
                .shadow(radius: 8)
            Text(text ?? "")
                .font(.subtitleChallenge)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    GenericBtnStyle(text: "Start", color: .blue)
        .frame(width: 164, height: 4)
}
