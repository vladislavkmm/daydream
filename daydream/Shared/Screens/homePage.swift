import SwiftUI

struct homePage: View {
    var body: some View {
        @State var users = users
        ZStack {
            GeometryReader { geometry in
                            VStack(spacing: 0) {
                                Color.orange
                                    .frame(height: geometry.size.height / 2.7)
                                    .opacity(0.7)
                                LinearGradient(colors: [Color.yellow, Color.white],
                                               startPoint: .top,endPoint: .bottom)
                                .opacity(0.6)
                            }
                            .ignoresSafeArea(edges: .top)
                        }
            VStack{
                headerView()
            }
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: .infinity, height: 120)
                        .offset(y: -165)
                        .padding()
                    subheaderView()
                        .offset(y: -65)
                    ForEach(users) { user in
                        let formattedString = String(format: "%.2f", user.accountValue)
                        HStack {
                            Text("\(formattedString)")
                                .font(.title)
                                .padding()
                            Spacer()
                            Text(user.currency)
                                .padding()
                                .font(.title2)
                        }
                        .offset(y: -165)
                        .padding()
                    }
                }
            }
        }
    }
}
