import SwiftUI

struct activitycardView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .frame(width: .infinity, height: 120)
            HStack{
                Text("test")
                Spacer()
                Text("test")
            }.padding()
        }
        
    }
}

#Preview {
    activitycardView()
}
