import SwiftUI

struct ContentView: View {
    @State private var selectedTab:Int = 0
    
    var body: some View {
        TabView(selection:$selectedTab) {
            homeScreen()
        }
    }
}

#Preview {
    ContentView()
}
