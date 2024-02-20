//
//  DetailSearchView.swift
//  AppleMusic
//
//  Created by Христина Буянова on 19.02.2024.
//

import SwiftUI

struct DetailSearchView: View {

    var selectCategory: SeachModel


    var body: some View {
        Text(selectCategory.title)
    }
}

#Preview {
    DetailSearchView(selectCategory: SeachModel.data[0])
}
