//
//  DetailSearchView.swift
//  AppleMusic
//
//  Created by Христина Буянова on 19.02.2024.
//

import SwiftUI

struct DetailSearchView: View {

    var selectCategory: StationModel


    var body: some View {
        Text(selectCategory.title)
    }
}

#Preview {
    DetailSearchView(selectCategory: StationModel.data[0])
}
