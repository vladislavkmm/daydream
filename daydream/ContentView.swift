import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            homePage()
                .tabItem {
                    Label("Homepage", systemImage: "house")
                }

            loansPage()
                .tabItem {
                    Label("Loans", systemImage: "creditcard")
                }

            historyPage()
                .tabItem {
                    Label("History", systemImage: "clock")
                }

            profilePage()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .accentColor(Color.purple)
        .background(Color.white.ignoresSafeArea()) 
    }
}

#Preview {
    ContentView()
}
