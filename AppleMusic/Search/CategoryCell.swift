

import SwiftUI

struct CategoryCell: View {

    var category: SeachModel
    @State private var isActive = false

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
                        .padding([.bottom, .leading], 10), alignment: .bottomLeading)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .onTapGesture {
                            self.isActive = true
                        }
                        .background(
                            NavigationLink (
                                destination: DetailSearchView(selectModel: category),
                                isActive: $isActive,
                                label: {
                                    Text("")
                                })
                        )
        }
    }
}

#Preview {
    CategoryCell(category: SeachModel.data[0])
}
