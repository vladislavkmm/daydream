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
                                   startPoint: .top, endPoint: .bottom)
                        .opacity(0.6)
                }
                .ignoresSafeArea(edges: .top)
            }
            
            VStack {
                headerView()
                    .padding(.top, -160)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(height: 120)
                        .padding(.horizontal)
                        .padding(.bottom,280)
                    
                    VStack(spacing: 16) {
                        subheaderView()
                        
                        
                        ForEach(users) { user in
                            let formattedString = String(format: "%.2f", user.accountValue)
                            HStack {
                                Text("\(formattedString)")
                                    .font(.title)
                                    .padding(.horizontal)
                                Spacer()
                                Text(user.currency)
                                    .font(.title2)
                                    .padding(.horizontal)
                            }.padding(.top,-205)
                            .padding(.vertical, 30) 
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                Spacer()
                    .frame(height: 60)
                
                activityView()
                    .padding(.top, -250)
            }
            .padding(.top)
        }
    }
}

#Preview {
    homePage()
}
