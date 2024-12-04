
import SwiftUI

struct headerView: View {
    var body: some View {
        @State var users = users
        HStack{
            HStack{
                Text("Image")
                Text("Name")
                    .font(.title2)
            }
            .padding()
            
            Spacer()
        }.offset(y:-350)
    }
}

#Preview {
    headerView()
}
