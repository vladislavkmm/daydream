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


            Tab("history", systemImage: "gobackward") {
                historyPage()
            }
            
            Tab("profile", systemImage: "person.crop.circle.fill") {
                profilePage()
            }
        }
    }
}

#Preview {
    ContentView()
}
