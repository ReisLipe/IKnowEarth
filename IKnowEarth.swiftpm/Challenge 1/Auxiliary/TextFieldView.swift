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
        TextField(placeholder, text: $text)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 5)
                    .foregroundStyle(color)
            }
    }
}

#Preview {
    TextFieldView(text: .constant("Test"), placeholder: "Insert the country name", color: Color.spacePurple)
}
