import SwiftUI

struct registrationView: View {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Регистрация")
                .font(.largeTitle)
                .bold()

            TextField("Имя пользователя", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            SecureField("Пароль", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Button(action: {
                if !username.isEmpty && !password.isEmpty {
                    isRegistered = true
                }
            }) {
                Text("Зарегистрироваться")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}


#Preview {
    registrationView()
}
