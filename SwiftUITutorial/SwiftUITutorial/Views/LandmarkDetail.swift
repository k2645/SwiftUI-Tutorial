import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // VStack은 Vertical Stack ~
            VStack(alignment: .leading) { // 기본은 center
                Text(landmark.name)
                    .font(.title)
                // HStack은 Horizontal Stack ~
                HStack {
                    Text(landmark.park)
                    // 디바이스의 full width 사용 ??
                    // Spacer가 parent view의 공간을 모두 사용
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }
            .padding() // outer edge에 조금의 공간을 주기위함
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
