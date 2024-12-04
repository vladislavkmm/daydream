import SwiftUI

struct historyPage: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.green, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .top)
            
            VStack {
                HStack {
                    Text("Test")
                }
            }
        }
    }
}

#Preview {
    historyPage()
}
