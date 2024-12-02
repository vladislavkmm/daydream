import SwiftUI

struct registrationView: View {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    @State private var userLogin: String = ""
    @State private var userPassword: String = ""
    @State private var loginError:String? = nil
    var body: some View {
        VStack {
            TextField("enter your login", text: $userLogin)
                .autocapitalization(.none)
            TextField("enter your password", text: $userPassword)
                .autocapitalization(.none)
            Button {
                loginValidation()
            }label: {
                Text("Login")
            }
            if let error = loginError{
                Text("error")
            }
        }
        
        
    }
    
    func loginValidation(){
        if let _ = users.first(where: {$0.login == userLogin && $0.password == userPassword}){
            isRegistered = true
            loginError = nil
        }else{
            let loginError = "there is a login error in your login information"
        }
    }
}

#Preview {
    registrationView()
}
