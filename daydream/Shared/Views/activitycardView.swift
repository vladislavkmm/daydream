import SwiftUI

struct activitycardView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .frame(width: .infinity, height: 100)
            HStack{
                Text("Food")
                    .font(.title)
                Spacer()
                Text("100$") // add data to the array and hen map it
                    .font(.title2)
            }.padding()
        }
        
    }
}

#Preview {
    activitycardView()
}
