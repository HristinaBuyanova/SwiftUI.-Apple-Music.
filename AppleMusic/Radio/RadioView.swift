

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
        }
    }


#Preview {
    RadioView()
}
