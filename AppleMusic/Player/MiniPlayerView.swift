
import SwiftUI

struct MiniPlayerView: View {
    var body: some View {
        HStack(spacing: 10, content: {
            Image("single")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .cornerRadius(15)
                .offset(x: 5)
            VStack {
                Text(artist)
                    .font(.subheadline)
                Text(single)
                    .foregroundStyle(.gray)
            }

            Spacer(minLength: 0)

            Button(action: {}) {
                Image(systemName: "play.fill")
                    .foregroundStyle(.black)
                    .font(.title2)
            }

            Button(action: {}) {
                Image(systemName: "forward.fill")
                    .foregroundStyle(.black)
                    .font(.title2)
            }
            .padding(.horizontal)

        })
        .frame(height: 70)
        .background(
            VStack(spacing: 0, content: {
                BlurView()
                Divider()
            })

        )
        .offset(y: -50)
    }
}

#Preview {
    MiniPlayerView()
}
