

import SwiftUI

struct DetailSearchCell: View {

    @State var detailData: DetailSearchModel

    var body: some View {
        VStack(alignment: .leading) {
            Text(detailData.description)
                .font(.subheadline)
                .foregroundStyle(.gray)

            Text(detailData.title)
                .font(.headline)

            Text(detailData.subtitle)
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
        .padding(.bottom, 10)

        Image(detailData.imageName)
            .resizable()
            .frame(width: 320, height: 220)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay(
                VStack(alignment: .leading) {
                    Spacer()
                    Text(detailData.imageDescription)
                        .font(.caption)
                        .foregroundStyle(.white)
                        .bold()
                        .padding(10)
                }
                , alignment: .bottomLeading
            )
    }
}

//#Preview {
//    DetailSearchCell()
//}
