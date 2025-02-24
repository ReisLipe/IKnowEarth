//
//  Fonts.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 14/02/25.
//

import Foundation
import SwiftUI

// MARK: - Copyright - CODE LICENSE
/* MIT License
Copyright (c) 2022 Alessandra Luana Nascimento Pereira
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*/

// MARK: - Copyright - FONT LICENSE
/*
Hej hej,

Thank for downloading Pixelate - A Fun Techno Typeface.

NOTE:

By installing or using this font, you are agree to the Product Usage Agreement:

- This font is already FULL VERSION and ONLY for PERSONAL USE. NO COMMERCIAL USE ARE ALLOWED!
- For Corporate use you have to purchase Corporate license
- If you need a custom license please contact us at foundry@ibracreative.com

- Any donation are very much appreciated. Paypal account for donation: https://paypal.me/IbraCreative

Feel free to visit our store for more amazing fonts: https://ibracreative.com
Kindly check our instagram for update: @IbraCreative

Warm regards,

IbraCreative
*/

enum PixelateRegular: String, CaseIterable {
    case textFont = "Pixelate-Regular.ttf"
    var fontName: String { String(self.rawValue.dropLast(4)) }
    var fileExtension: String { String(self.rawValue.suffix(3)) }
}


class FontLoader {
    static func registerFonts() {
        PixelateRegular.allCases.forEach {
            registerFont(fontName: $0.fontName, fontExtension: $0.fileExtension)
        }
    }
    
    private static func registerFont(fontName: String, fontExtension: String) {
        guard let fontURL = Bundle.main.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            print("Couldn't create \(fontName) from data")
            return
        }
        
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
    
}

class customFontLoader {
 @MainActor static let shared = FontLoader()
 func customFont() {
     if let cfURL = Bundle.main.url(forResource: "Pixelate-Regular", withExtension: "ttf") as CFURL? {
         CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
  }
 }
}


extension Font {
    // MARK: Title Fonts
    static let titleChallenge: Font = .custom(PixelateRegular.textFont.fontName, size: 32)
    static let subtitleChallenge: Font = .custom(PixelateRegular.textFont.fontName, size: 16)
    
    // MARK: Speech Fonts
    static let speech: Font = .custom(PixelateRegular.textFont.fontName, size: 24)
}
