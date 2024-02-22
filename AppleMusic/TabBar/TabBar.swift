

import SwiftUI

struct TabBar: View {

    @State private var expandSheet = false
    @Namespace private var animation

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "play.square.stack.fill")
                        Text(mediateka)
                    }

//                Text(radio)
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text(radio)
                    }

//                Text("Поиск")
                SeachView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text(search)
                    }

                SeachViewRepresentable()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск UIKit")
                    }

            }
            .tint(.red)

            if expandSheet {
                PlayerView(animation: animation, expandSheet: $expandSheet)
            } else {
                MiniPlayerView(animation: animation, expandSheet: $expandSheet)
            }

        })
    }
}


#Preview {
    TabBar()
}
