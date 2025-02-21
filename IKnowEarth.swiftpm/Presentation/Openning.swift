//
//  Openning.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 21/02/25.
//

import SwiftUI

struct Openning: View {
    @State private var moveUp = false
    @State private var showContent = false
    
    let animationTime: Double = 3
    
    var body: some View {
        ZStack{
            Color.deepSapceBlue
                .ignoresSafeArea(.all)
            ZStack {
                VStack{
                    Image("FlyingSaucer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .offset(y: moveUp ? -UIScreen.main.bounds.height : UIScreen.main.bounds.height / 2)
                        .animation(.easeInOut(duration: animationTime), value: moveUp)
                }
                .onAppear {
                    moveUp = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + animationTime) {
                        withAnimation(.easeIn(duration: 1)) {
                                showContent = true
                        }
                    }
                }
                
                VStack(spacing: 32) {
                    Spacer()
                    
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 320)
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: FirstChallengeView(),
                        label: {
                            Image("CircleArrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64, height: 64)
                        })
                }
                .disabled(!showContent)
                .opacity(showContent ? 1 : 0)
            }
            
        }
    }
}

#Preview {
    Openning()
}
