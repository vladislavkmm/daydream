import SwiftUI

struct headerView: View {
    
    
    var body: some View {
        @State var users = users
        HStack {
            HStack {
                Image(systemName: "person.circle.fill") 
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.black)
                
                ForEach(users, id: \.login) { user in
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.title2)
                        Text(user.surname)
                            .font(.title2)
                    }
                }
            }
            .padding()
            
            Spacer()
        }
        .padding(.top, 20)
    }
}

#Preview {
    headerView()
}
