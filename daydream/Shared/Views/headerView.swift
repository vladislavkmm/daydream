
import SwiftUI

struct headerView: View {
    var body: some View {
        @State var users = users
        HStack{
            HStack{
                Circle() // todo: add image instead of the blank black circle
                    .frame(width: 60,height: 60)
                ForEach(users, id: \.login){ user in
                    Text(user.name)
                        .font(.title2)
                    Text(user.surname)
                        .font(.title2)
}            }
            .padding()
            
            Spacer()
        }.offset(y:-350)
    }
}

#Preview {
    headerView()
}
