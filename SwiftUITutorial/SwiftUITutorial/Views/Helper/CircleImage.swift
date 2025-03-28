import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle()) // Circle을 활용해 Clip 구현
            .overlay { // 이미지 border를 주기위한 overlay
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7) // 그림자 ~
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
