import SwiftUI

struct ContentView: View {
    @State private var selectedTab:Int = 0
    
    var body: some View {
        TabView(selection:$selectedTab) {
            homeScreen()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            profileScreen()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
                .tag(1)
        }
    }
}

#Preview {
    ContentView()
}
