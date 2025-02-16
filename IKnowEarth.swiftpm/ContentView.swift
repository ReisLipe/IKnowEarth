import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(){
                
                // MARK: Title
                VStack(spacing: 20) {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("I Know The World!")
                        .font(.largeTitle)
                        .bold()
                }.padding()
                
                Spacer()
                
                
                NavigationLink {
                    FirstChallengeView()
                } label: {
                    GenericBtnStyle(text: "Start", color: .blue)
                }
            }
            .padding()
        }
    }
}
