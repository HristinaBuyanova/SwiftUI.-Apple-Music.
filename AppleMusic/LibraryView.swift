

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text(firstText)
                    .bold()
                    .font(.system(size: 24))

                Text(secondText)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray)

            }
            .offset(y: -50)
            .navigationTitle(mediateka)


                .toolbar {
                    ToolbarItem(placement: .topBarTrailing, content: {
                        NavigationLink("Править") {
                            ListView()
                                .navigationBarBackButtonHidden(true)
                        }
                        .foregroundStyle(.red)
                        .bold()
                    })
//                    .foregroundStyle(.red)
//                    .bold()
                }
        }
    }
}


#Preview {
    LibraryView()
}
