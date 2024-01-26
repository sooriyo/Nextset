import SwiftUI

struct RegistrationView: View {
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
                }
                .padding(.leading, 30)
                .padding(.bottom, 10)

                // Text
                Text("Portable\npartner of\nyour workout.")
                    .font(.system(size: 45, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding(.leading, 30)
            }
            .padding(.bottom, 100) 
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
