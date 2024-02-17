

import SwiftUI

struct CategoryCell: View {

    var category: StationModel

    var body: some View {
        VStack {
            Image(category.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 120)
                .overlay(
                    Text(category.title)
                        .foregroundStyle(.white)
                        .bold()
                        .font(.system(size: 17))
                        .padding([.bottom, .leading], 10)
                    , alignment: .bottomLeading)
                .clipShape(RoundedRectangle(cornerRadius: 10))

        }
    }
}

#Preview {
    CategoryCell(category: StationModel.data[0])
}
