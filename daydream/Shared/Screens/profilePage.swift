import SwiftUI

struct profilePage: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.white]),
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
    profilePage()
}
