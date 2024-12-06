import SwiftUI

struct activitycardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(width: .infinity, height: 120)
    }
}

#Preview {
    activitycardView()
}
