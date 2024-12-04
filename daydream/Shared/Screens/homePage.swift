import SwiftUI

struct homePage: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                            VStack(spacing: 0) {
                                Color.orange
                                    .frame(height: geometry.size.height / 3)
                                    .opacity(0.7)
                                LinearGradient(colors: [Color.pink, Color.white],
                                               startPoint: .top,endPoint: .bottom)
                                .opacity(0.5)
                            }
                            .ignoresSafeArea(edges: .top)
                        }
            
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: .infinity, height: 140)
                    .offset(y: -185)
                    .padding()
            }
        }
    }
}
