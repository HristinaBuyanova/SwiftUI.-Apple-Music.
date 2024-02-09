

import SwiftUI

var firstText = "Ищите свою музыку?"
var secondText = "Здесь появится купленная Вами в iTunes Store музыка"
var mediateka = "Медиатека"

struct LibraryView: View {
    var body: some View {
        NavigationSplitView {
            TabView {
                VStack {
                    Text(firstText)
                    Text(secondText)
                        .multilineTextAlignment(.center)
                }
                .tabItem {
                    Image(systemName: "play.square.stack.fill")
                    Text(mediateka)
                }

                Text("")

            }

            .navigationTitle(mediateka)
        }
    detail: {
            Text("Library View")
        }
    }
}

#Preview {
    LibraryView()
}
