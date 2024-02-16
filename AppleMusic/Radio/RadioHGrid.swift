
import SwiftUI

struct RadioHGrid: View {

    @State private var dataRadio = RadioModel.data
    let rows = [GridItem(.flexible(minimum: 250, maximum: 300))]
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
                            .lineLimit(1)
                            .frame(width: 280,
                                   alignment: .leading)
                        Text(radio.secondDescription)
                            .font(.title3)
                            .foregroundStyle(.gray)
                        Image(radio.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: 280, height: 150)
                    }
                }
            }
//            Divider()
            .padding(.top, 20)
            .padding(.leading, 10)

//                .padding(.top, -50)
        }
    }
}

#Preview {
    RadioHGrid()
}
