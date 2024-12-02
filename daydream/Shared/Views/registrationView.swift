import SwiftUI

struct registrationView: View {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    @State private var userLogin: String = ""
    @State private var userPassword: String = ""
    var body: some View {
        VStack {
            TextField("enter your login", text: $userLogin)
            TextField("enter your password", text: $userPassword)
            Button {
                loginValidation()
            }label: {
                Text("Login")
            }

        }
    }
    
    func loginValidation(){
        isRegistered = true
    }
}

#Preview {
    registrationView()
}
