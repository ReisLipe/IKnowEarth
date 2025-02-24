//
//  TextFieldView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 14/02/25.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    
    let placeholder: String
    let color: Color
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundStyle(Color.hopeWhite).opacity(0.4)
                    .padding(.leading)
            }
            TextField("", text: $text)
                .padding()
                .foregroundColor(.hopeWhite)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 5)
                        .foregroundStyle(color)
                )
        }
        .shadow(radius: 8, x: 8, y: 8)
    }
}

#Preview {
    ZStack{
        Color.spaceCadet
        TextFieldView(text: .constant(""), placeholder: "Insert the country name", color: Color.battleshipSilver)
            .padding()
    }
}
