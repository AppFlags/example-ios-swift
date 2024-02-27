
import Foundation
import AppFlags


class AppFlagsManager {
    private static let SDK_KEY = "<YOUR_CLIENT_KEY_HERE>"
    
    static let shared = AppFlagsManager()
    
    private var client: AppFlagsClient?
    
    func getClient() -> AppFlagsClient? {
        return client
    }
    
    func initialize(user: AppFlagsUser) {
        client = try? AppFlagsClient(
            sdkKey: AppFlagsManager.SDK_KEY,
            user: user
        )
    }
}
