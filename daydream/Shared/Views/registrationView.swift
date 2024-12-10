import SwiftUI

struct registrationView: View {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    @State private var userLogin: String = ""
    @State private var userPassword: String = ""
    @State private var loginError:String? = nil
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .top)
            VStack {
                
                TextField("enter your login", text: $userLogin)
                    .autocapitalization(.none)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.white, lineWidth: 1)
                        )
                    .disableAutocorrection(true)
                TextField("enter your password", text: $userPassword)
                    .autocapitalization(.none)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.white, lineWidth: 1)
                        )
                    .disableAutocorrection(true)
                if let error = loginError{
                    Text(error)
                        .foregroundStyle(Color.purple)
                        .padding()
                }
                Button {
                    loginValidation()
                }label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(8)
                        .shadow(radius: 5)
                                    
                }
                
                    
            }.padding()
        }
        
        
    }
    
    func loginValidation(){
        if let _ = users.first(where: {$0.login == userLogin && $0.password == userPassword}){
            isRegistered = true
            loginError = nil
        }else{
            loginError = "There is an issue with the login information provided"
        }
    }
}

#Preview {
    registrationView()
}
