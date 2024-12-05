import SwiftUI

struct activityView: View {
    var body: some View {
        VStack{
            HStack{
                Text("All activity")
                    .font(.title2)
                Spacer()
                Text("see more")
                    .font(.title3)
            }
            .padding()
        }
    }
}

#Preview {
    activityView()
}
