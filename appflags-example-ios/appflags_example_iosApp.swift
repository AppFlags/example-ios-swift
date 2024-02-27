
import SwiftUI
import AppFlags

@main
struct appflags_example_iosApp: App {
    
    init() {
        // Initialize AppFlags with a user
        let appFlagsUser = AppFlagsUser(key: "x")
        AppFlagsManager.shared.initialize(user: appFlagsUser)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
