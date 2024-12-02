import SwiftUI

@main
struct daydreamApp: App {
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
