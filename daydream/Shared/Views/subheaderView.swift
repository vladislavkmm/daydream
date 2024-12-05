import SwiftUI

struct subheaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Text("text")
                    .frame(width: 120, height: 30)
                    .padding(12)
                    .background(Color.black)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .font(.title2)
            }

            Button(action: {
               
            }) {
                Text("text")
                    .frame(width: 120, height: 30)
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(20)
                    .foregroundColor(.black)
                    .font(.title2)
            }

            Button(action: {
                
            }) {
                Text("text")
                    .frame(width: 30, height: 30)
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(50)
                    .foregroundColor(.black)
                    .font(.title2)
            }
        }
    }
}

#Preview {
    subheaderView()
}
