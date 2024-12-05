import SwiftUI

struct subheaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Text("Add money")
                    .frame(width: 120, height: 30)
                    .padding(12)
                    .background(Color.black)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .font(.title2)
            }

            Button(action: {
               
            }) {
                Text("Transfer")
                    .frame(width: 120, height: 30)
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(20)
                    .foregroundColor(.black)
                    .font(.title2)
            }

            Button(action: {
                
            }) {
                Image(systemName: "line.3.horizontal")
                    .frame(width: 30, height: 30)
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(50)
                    .foregroundColor(.black)
                    .font(.title2)
            }
        }
        
        
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(width: .infinity,height: 100)
            .padding()
            .offset(y:90)
    }
}

#Preview {
    subheaderView()
}
