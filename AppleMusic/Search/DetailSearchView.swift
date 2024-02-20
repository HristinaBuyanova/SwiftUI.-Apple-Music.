//
//  DetailSearchView.swift
//  AppleMusic
//
//  Created by Христина Буянова on 19.02.2024.
//

import SwiftUI

struct DetailSearchView: View {

    var selectModel: SeachModel
    var data = SeachModel.data

    @Environment(\.dismiss) private var dismiss

    var rows = [GridItem(.flexible())]

    var body: some View {
        let detail = selectModel.detailArray

        VStack {
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 10) {
                        Text("")
                    }
                }
            }
        }
        Text(selectModel.title)
    }
}

#Preview {
    DetailSearchView(selectModel: SeachModel.data[0])
}
