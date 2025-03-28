import SwiftUI

struct ContentView: View {
    @State private var modelData = ModelData()
    
    var body: some View {
        LandmarkLists()
            .environment(modelData)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
