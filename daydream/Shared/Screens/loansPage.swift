import SwiftUI

struct loansPage: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.orange, Color.white]),
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
    loansPage()
}
