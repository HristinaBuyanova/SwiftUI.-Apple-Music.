

import SwiftUI

struct SeachView: View {

    @State var tf = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField(
                    "Ваша медиатека"
                    , text: $tf)
                .padding(.leading, 15)
                .font(.title3)
                .frame(height: 40)
                .background(.silver)
                .cornerRadius(10)
                .padding(.horizontal, 10)
                Text("Поиск по категориям")
                    .font(.title2)
                    .bold()
                    .padding(.trailing, 120)
                    .padding(.top, 10)
            }
            .navigationTitle("Поиск")
        }
        .padding(.bottom, 60)
    }
}

#Preview {
    SeachView()
}
