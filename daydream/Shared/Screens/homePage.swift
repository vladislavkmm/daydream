import SwiftUI

struct homePage: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .top)
            
            VStack {
                Text("Homepage Content")
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}
