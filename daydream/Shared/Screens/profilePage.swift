import SwiftUI

struct profilePage: View {
    var body: some View {
        @State var users = users
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .top)
            
            VStack {
                HStack {
                    VStack{
                        Circle()
                            .frame(width: 100)
                        ForEach(users, id:\.login){user in
                            HStack{
                                Text(user.name)
                                Text(user.surname)
                                
                            }
                            Text(user.login)
                        }
                    }
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    profilePage()
}
