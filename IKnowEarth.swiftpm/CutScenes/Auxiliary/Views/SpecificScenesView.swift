//
//  SpecificScenesView.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

struct CharacterPresentation1View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.deepSapceBlue
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                Image(speech.speaker.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 184, height: 184)
                    .shadow(radius: 16)
                Spacer()
                
                SpeechView(nextText: $nextSpeech, speech: speech, showImage: false)
                    .padding()
            }
        }
    }
}

struct CharacterPresentation2View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.deepSapceBlue
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                Image(speech.speaker.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 184, height: 184)
                    .shadow(radius: 16)
                Spacer()
                
                SpeechView(nextText: $nextSpeech, speech: speech, showImage: false)
                    .padding()
            }
        }
    }
}

struct EarthBackground1View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.spaceCadet
                .ignoresSafeArea(.all)
            
            VStack{
                VStack{
                    
                    // Top Left Star
                    HStack{
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                        Spacer()
                    }.padding(.horizontal)
                    
                    // Earth
                    Image("Earth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 184, height: 184)
                    
                    // Bottom Right Star
                    HStack {
                        Spacer()
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                    }.padding(.horizontal)
                }
                
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct EarthBackground2View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.spaceCadet
                .ignoresSafeArea(.all)
            
            VStack{
                VStack{
                    
                    // Top Left Star
                    HStack{
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                        Spacer()
                    }.padding(.horizontal)
                    
                    // Earth
                    Image("Earth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 184, height: 184)
                    
                    // Bottom Right Star
                    HStack {
                        Spacer()
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                    }.padding(.horizontal)
                }
                
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct EarthBackground3View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.spaceCadet
                .ignoresSafeArea(.all)
            
            VStack{
                VStack{
                    
                    // Top Left Star
                    HStack{
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                        Spacer()
                    }.padding(.horizontal)
                    
                    // Earth
                    Image("Earth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 184, height: 184)
                    
                    // Bottom Right Star
                    HStack {
                        Spacer()
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                    }.padding(.horizontal)
                }
                
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct EarthBackground4View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.spaceCadet
                .ignoresSafeArea(.all)
            
            VStack{
                VStack{
                    
                    // Top Left Star
                    HStack{
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                        Spacer()
                    }.padding(.horizontal)
                    
                    // Earth
                    Image("Earth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 184, height: 184)
                    
                    // Bottom Right Star
                    HStack {
                        Spacer()
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                    }.padding(.horizontal)
                }
                
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}


struct StarrySkies1View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.nightSkyBlue
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                }.padding(.horizontal)
                
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                }.padding(.horizontal)
            }
            VStack{
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct Sunset1View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.nightSkyBlue
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                }.padding(.horizontal)
                
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                }.padding(.horizontal)
            }
            
            VStack{
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct Sunset2View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.nightSkyBlue
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                }.padding(.horizontal)
                
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                    Spacer()
                }.padding(.horizontal)
                
                HStack{
                    Spacer()
                    Image("Stars")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 186, height: 186)
                }.padding(.horizontal)
            }
            
            VStack{
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct EarthBackground1Scene2View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.spaceCadet
                .ignoresSafeArea(.all)
            
            VStack{
                VStack{
                    
                    // Top Left Star
                    HStack{
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                        Spacer()
                    }.padding(.horizontal)
                    
                    // Earth
                    Image("Earth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 184, height: 184)
                    
                    // Bottom Right Star
                    HStack {
                        Spacer()
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                    }.padding(.horizontal)
                }
                
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct EarthBackground2Scene2View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.spaceCadet
                .ignoresSafeArea(.all)
            
            VStack{
                VStack{
                    
                    // Top Left Star
                    HStack{
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                        Spacer()
                    }.padding(.horizontal)
                    
                    // Earth
                    Image("Earth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 184, height: 184)
                    
                    // Bottom Right Star
                    HStack {
                        Spacer()
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                    }.padding(.horizontal)
                }
                
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct EarthBackground3Scene2View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.spaceCadet
                .ignoresSafeArea(.all)
            
            VStack{
                VStack{
                    
                    // Top Left Star
                    HStack{
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                        Spacer()
                    }.padding(.horizontal)
                    
                    // Earth
                    Image("Earth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 184, height: 184)
                    
                    // Bottom Right Star
                    HStack {
                        Spacer()
                        Image("Stars")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 106, height: 106)
                    }.padding(.horizontal)
                }
                
                Spacer()
                SpeechView(nextText: $nextSpeech, speech: speech)
                    .padding()
            }
        }
    }
}

struct Result1View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.deepSapceBlue
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                Image(speech.speaker.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 184, height: 184)
                    .shadow(radius: 16)
                Spacer()
                
                SpeechView(nextText: $nextSpeech, speech: speech, showImage: false)
                    .padding()
            }
        }
    }
}

struct Result2View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.deepSapceBlue
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                Image(speech.speaker.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 184, height: 184)
                    .shadow(radius: 16)
                Spacer()
                
                SpeechView(nextText: $nextSpeech, speech: speech, showImage: false)
                    .padding()
            }
        }
    }
}

struct Result3View: View {
    @Binding var nextSpeech: Bool
    @State var speech: Speech
    
    var body: some View {
        ZStack{
            Color.deepSapceBlue
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                Image(speech.speaker.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 184, height: 184)
                    .shadow(radius: 16)
                Spacer()
                
                SpeechView(nextText: $nextSpeech, speech: speech, showImage: false)
                    .padding()
            }
        }
    }
}

#Preview {
//    CharacterPresentationView(
//        skipText: .constant(true),
//        image: "Tutor",
//        text: "Hello, earthlings!"
//    )
    
//    EarthBackgroundView(
//        skipText: .constant(false),
//        speech: .init(
//            speaker: .init(name: "Test", image: "Tutor"),
//            text: "Hello, earthlings!")
//    )
    
//    StarrySkiesView(
//        skipText: .constant(false),
//        speech: .init(
//            speaker: .init(name: "Test", image: "Tutor"),
//            text: "Hello, earthlings!")
//    )
    
//    SunsetView(
//        nextText: .constant(false),
//        speech: .init(
//           speaker: .init(name: "Test", image: "Tutor"),
//           text: "Hello, earthlings!")
//    )
}
