import SwiftUI

struct profilePage: View {
    var body: some View {
        @State var users = users
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.orange, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .top)
            
            VStack {
                HStack {
                    VStack{
                        Circle()// add image (to the array and in the profile page) instead of black circle
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
