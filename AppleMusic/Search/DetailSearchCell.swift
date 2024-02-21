

import SwiftUI

struct DetailSearchCell: View {
    
    @State var detailData: DetailSearchModel
    
    var body: some View {
        VStack(alignment: .leading) {
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
            .padding(.top, 80)

            Image(detailData.imageName)
                .resizable()
                .frame(width: 320, height: 220)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(
                    VStack(alignment: .leading) {
                        Spacer()
                        Text(detailData.imageDescription)
                            .font(.callout)
                            .foregroundStyle(.white)
                            .bold()
                            .padding()
                    }
                    , alignment: .bottomLeading
                )
        }
    }
}

#Preview {
    DetailSearchView(selectModel: SeachModel.data[2])
}

//#Preview {
//    DetailSearchCell()
//}
