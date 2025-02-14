//
//  TextFieldView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 14/02/25.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    
    var body: some View {
        TextField("Insert country name", text: $text)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 5)
                    .foregroundStyle(Color.spacePurple)
            }
    }
}

#Preview {
    TextFieldView(text: .constant("Test"))
}
