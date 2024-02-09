

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "play.square.stack.fill")
                        Text(mediateka)
                    }

                Text(radio)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text(radio)
                    }

                Text(search)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text(search)
                    }
            }
            .tint(.red)
            PlayerView()
        })
    }
}

#Preview {
    TabBar()
}