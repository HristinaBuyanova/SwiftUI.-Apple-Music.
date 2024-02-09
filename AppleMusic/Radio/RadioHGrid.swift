
import SwiftUI

struct RadioHGrid: View {

    @State private var dataRadio = RadioModel.data
    let rows = [GridItem(.fixed(250))]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(dataRadio) { radio in
                    VStack(alignment: .leading) {
                        Divider()
                        Text(radio.firstDescription)
                            .font(.title3)
                            .foregroundStyle(.gray)
                        Text(radio.title)
                            .font(.title2)
                            .bold()
                        Text(radio.secondDescription)
                            .font(.title3)
                            .foregroundStyle(.gray)
                        Image(radio.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                }
            }
            .padding()

            Divider()
                .padding(.top, -50)
        }
    }
}

#Preview {
    RadioHGrid()
}
