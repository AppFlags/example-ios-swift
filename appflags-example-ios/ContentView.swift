
import SwiftUI
import AppFlags

struct ContentView: View {
    @ObservedObject private var appFlagsModel = AppFlagsViewModel.shared

    var body: some View {
        VStack {
      
            Text("AppFlags Example App")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            Text("Try modifying the feature flags in the dashboard to see the examples below change in realtime.")
                .font(.subheadline)
                .italic()
                .foregroundColor(.gray)
                .padding(.horizontal)
            
            Spacer()
            
            Text("Example #1")
                .font(.title2)
            Text("Shows the state of the `test` flag")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Image(systemName: appFlagsModel.testEnabled ? "lightswitch.on" : "lightswitch.off")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding(.top)
            Text("The feature is \(appFlagsModel.testEnabled ? "enabled" : "disabled")")
            
            Spacer()
            
            Text("Example #2")
                .font(.title2)
            Text("Shows the state of the `string_flag` flag")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text(appFlagsModel.text)
                .padding(.top)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
