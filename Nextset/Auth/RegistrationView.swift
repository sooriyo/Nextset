import SwiftUI
import UIKit

struct RegistrationView: View {
    // State variables for managing the opacity of each word
    @State private var opacityPortable = 0.0
    @State private var opacityPartner = 0.0
    @State private var opacityOf = 0.0
    @State private var opacityYour = 0.0
    @State private var opacityWorkout = 0.0
    @State private var opacityButton = 0.0
    
    // New state variable for glow animation
    @State private var glowIntensity = 1.0

    // Haptic feedback generator
    private let haptic = UIImpactFeedbackGenerator(style: .heavy)

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 16) {
                Button(action: {
                    // Action for the button
                }) {
                    Image(systemName: "arrow.right")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                        .opacity(opacityButton)
                        .shadow(color: .white, radius: glowIntensity, x: 0, y: 0)
                }
                .padding(.leading, 30)
                .padding(.bottom, 10)

                // Animated Text
                VStack(alignment: .leading, spacing: -5) {
                    Text("Portable")
                        .opacity(opacityPortable)

                    HStack(spacing: 0) {
                        Text("partner ")
                            .opacity(opacityPartner)
                        Text("of")
                            .opacity(opacityOf)
                    }

                    HStack(spacing: 0) {
                        Text("your ")
                            .opacity(opacityYour)
                        Text("workout.")
                            .opacity(opacityWorkout)
                    }
                }
                .font(.system(size: 45, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding(.leading, 30)
            }
            .padding(.bottom, 100)
            .onAppear {
                // Prepare haptic feedback
                haptic.prepare()

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation(Animation.easeIn) {
                        self.opacityPortable = 1.0
                    }
                    self.haptic.impactOccurred()
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation(Animation.easeIn) {
                        self.opacityPartner = 1.0
                    }
                    self.haptic.impactOccurred()
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation(Animation.easeIn) {
                        self.opacityOf = 1.0
                    }
                    self.haptic.impactOccurred()
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation(Animation.easeIn) {
                        self.opacityYour = 1.0
                    }
                    self.haptic.impactOccurred()
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation(Animation.easeIn) {
                        self.opacityWorkout = 1.0
                    }
                    self.haptic.impactOccurred()
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation(Animation.easeIn) {
                        self.opacityButton = 1.0
                    }
                    self.haptic.impactOccurred()
                }

                // Speed up glow animation
                withAnimation(Animation.easeInOut(duration: 2.5).repeatForever(autoreverses: true)) {
                    glowIntensity = 15.0
                }
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
