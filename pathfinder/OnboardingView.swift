//import SwiftUI
//
//struct OnboardingView: View {
//    // State variable for greeting animation visibility
//    @State private var showGreeting = false
//    
//    var body: some View {
//        ZStack {
//            // Background color
//            Color.black.edgesIgnoringSafeArea(.all)
//            
//            // Greeting Text centered on the screen
//            Text("What's your name?")
//                .font(.system(size: 60)) // Set a large font size for the greeting
//                .fontWeight(.bold)
//                .foregroundColor(.white)
//                .opacity(showGreeting ? 1 : 0)
//                .offset(y: showGreeting ? 0 : 100) // Animates from the bottom
//                .animation(.easeOut(duration: 1.0), value: showGreeting) // Animation for greeting
//                .onAppear {
//                    self.showGreeting.toggle()
//                }
//        }
//    }
//}

//struct OnboardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingView()
//    }
//}
