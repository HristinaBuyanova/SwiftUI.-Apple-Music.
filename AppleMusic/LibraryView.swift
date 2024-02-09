

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationStack {
            Text(firstText)
                .bold()
                .font(.system(size: 24))
                .navigationTitle(mediateka)

            Text(secondText)
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
                .toolbar {
                    Button("Править") { }
                    .foregroundStyle(.red)
                    .bold()
                }
        }
        .offset(y: -50)
    }
}


#Preview {
    LibraryView()
}
