import SwiftUI

@main
struct MyApp: App {
    init() {
        FontLoader.registerFonts()
    }
    
    @StateObject private var gameInfo = GameInfo()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                Openning()
                    .environmentObject(gameInfo)
            }
        }
    }
}
