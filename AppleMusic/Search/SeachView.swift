

import SwiftUI

struct SeachView: View {

    @State var tf = ""
    @State var category = StationModel.data

    var columns = [GridItem(.adaptive(minimum: 100)),
                   GridItem(.adaptive(minimum: 100)),]

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

                LazyVGrid(columns: columns, content: {
                    ForEach(category, id: \.self) {
                        item in CategoryCell(category: item)
                    }
                })
            }
            .navigationTitle("Поиск")
        }
        .padding(.bottom, 60)
    }
}

#Preview {
    SeachView()
}
