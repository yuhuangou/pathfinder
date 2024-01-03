import SwiftUI

struct SignInButtonsView: View {
    // State property for button animation visibility
    @State private var showButtons = false
    
    var body: some View {
        VStack(spacing: 10) {
            // Apple sign in button
            SignInButton(title: "Sign in with Apple", action: {
                // Apple sign-in action
            })
            
            // Google sign in button
            SignInButton(title: "Sign in with Google", action: {
                // Google sign-in action
            })
            
            // Microsoft sign in button
            SignInButton(title: "Sign in with Microsoft", action: {
                // Microsoft sign-in action
            })
        }
        .padding(.horizontal)
        .padding(.top, 45)
        .padding(.bottom, 140) // Add padding at the bottom for better visual appearance
        .background(Color.white)
        .cornerRadius(35)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom) // Align to bottom
        .edgesIgnoringSafeArea(.bottom)
        .opacity(showButtons ? 1 : 0)
        .offset(y: showButtons ? 0 : 100) // Adjust to animate from the bottom
        .animation(.easeOut(duration: 1.2).delay(1.0), value: showButtons) // Add delay
        .onAppear {
            self.showButtons.toggle()
        }
    }
}

struct SignInButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color.black)
            .clipShape(Capsule())
            .shadow(radius: 5)
        }.padding(.horizontal, 25)
    }
}

struct WelcomeView: View {
    // State variable for greeting animation visibility
    @State private var showGreeting = false
    
    var body: some View {
        ZStack {
            // Background color
            Color.black.edgesIgnoringSafeArea(.all)
            
            // Greeting Text centered on the screen
            Text("Hi there!")
                .font(.system(size: 60)) // Set a large font size for the greeting
                .fontWeight(.bold)
                .foregroundColor(.white)
                .opacity(showGreeting ? 1 : 0)
                .offset(y: showGreeting ? 0 : 100) // Animates from the bottom
                .animation(.easeOut(duration: 1.0), value: showGreeting) // Animation for greeting
                .onAppear {
                    self.showGreeting.toggle()
                }
            
            // Include the separate view for the buttons
            SignInButtonsView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
