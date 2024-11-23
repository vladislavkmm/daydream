import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("homepage", systemImage: "house") {
                homePage()
            }

            Tab("loans", systemImage: "creditcard") {
                loansPage()
            }


            Tab("history", systemImage: "clock") {
                historyPage()
            }
            
            Tab("profile", systemImage: "person.crop.circle.fill") {
                profilePage()
            }
        }
        .accentColor(Color.purple)
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
