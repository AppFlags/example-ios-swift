
import Foundation
import AppFlags

class AppFlagsViewModel: ObservableObject {
    
    static let shared = AppFlagsViewModel()
    
    let appFlagsClient = AppFlagsManager.shared.getClient()!
    
    let booleanFlag: AppFlag<Bool>
    @Published var testEnabled: Bool
    
    let stringFlag: AppFlag<String>
    @Published var text: String
    
    private init() {
        
        // create flags and set initial values
        
        booleanFlag = appFlagsClient.getBooleanFlag(flagKey: "test", defaultValue:false)
        testEnabled = booleanFlag.value
        
        stringFlag = appFlagsClient.getStringFlag(flagKey: "string_flag", defaultValue: "default value")
        text = stringFlag.value
        
        // subscribe to flag updates
        
        _ = booleanFlag.onUpdate { [self] (value: Bool) in
            DispatchQueue.main.async {
                self.testEnabled = value
            }
        }
        
        _ = stringFlag.onUpdate { [self] (value: String) in
            DispatchQueue.main.async {
                self.text = value
            }
        }
        
    }
    
}
