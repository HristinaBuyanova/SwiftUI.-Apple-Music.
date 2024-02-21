

import SwiftUI

struct DetailSearchView: View {

    var selectModel: SeachModel
    var data = SeachModel.data

    @Environment(\.dismiss) private var dismiss

    var rows = [GridItem(.fixed(400))]
    var rows2 = [GridItem(.fixed(200))]

    var body: some View {
        let details = selectModel.detailArray

        VStack {
            HStack {

                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 10) {
                        ForEach(details, id: \.self) { detail in
                            DetailSearchCell(detailData: detail)
                        }
                    }
                    .padding()
                }
            }

            HStack {
                Text(selectModel.secondTitle)
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, -15)
                Text("См.все")
                    .foregroundStyle(.red)
                    .font(.subheadline)
                    .padding([.trailing, .top], 20)
            }
            .padding(.bottom, -20)

            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows2) {
                        ForEach(selectModel.secondImage, id: \.self) { images in
                            HStack {
                                Image(images)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding(20)
                }

            }
            VStack {
                Spacer(minLength: 90)
            }
        }
        .navigationTitle(selectModel.title)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.red)
                }

            }
        }

        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {

                } label: {
                    Image(systemName: "ellipsis.circle")
                        .foregroundStyle(.red)
                }

            }
        }

    }
}


#Preview {
    DetailSearchView(selectModel: SeachModel.data[0])
}
