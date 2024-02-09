
import SwiftUI

struct RadioVGrid: View {

    @State private var dataStation = StationModel.data
    let colums = [
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Cтанции")
                .font(.title)
                .bold()
                .padding(.trailing, 250)

            LazyVGrid(columns: colums) {

                ForEach(dataStation) { station in

                    HStack {
                        Image(station.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        VStack (alignment: .leading) {
                            Text(station.title)
                                .bold()

                            Text(station.description)
                                .foregroundStyle(.gray)

                        }
                        .padding()

                        Spacer()

                    }
                    .padding(.leading, 10)

                    Divider()
                }
            }
        }
    }
}

#Preview {
    RadioVGrid()
}
