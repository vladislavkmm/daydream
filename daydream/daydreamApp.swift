import SwiftUI

@main
struct daydreamApp: App {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    var body: some Scene {
        WindowGroup {
            if isRegistered {
                ContentView()
            } else {
                registrationView()
            }
        }
    }
}
