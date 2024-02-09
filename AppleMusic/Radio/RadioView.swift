

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                RadioHGrid()
                RadioVGrid()
            }
            .navigationTitle("Радио")
        }
        .padding(.bottom, 60)
        }
    }


#Preview {
    RadioView()
}
