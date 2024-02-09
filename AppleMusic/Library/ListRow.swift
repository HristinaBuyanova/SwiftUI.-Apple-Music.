//
//  ListRow.swift
//  AppleMusic
//
//  Created by Христина Буянова on 09.02.2024.
//

import SwiftUI

struct ListRow: View {
    var list: ListData

    var body: some View {
        HStack(spacing: 10) {
            list.circle
                .resizable()
                .foregroundStyle(list.isEdit ? .red : .gray)
                .frame(width: 20, height: 20)

            list.image
                .resizable()
                .foregroundStyle(.red)
                .frame(width: 25, height: 25)

            Text(list.title)
                .font(.title2)

        }
        .padding([.trailing, .leading], 10)
        .frame(height: 40)
    }
}

#Preview {
    ListRow(list: ListData.data[0])
}
