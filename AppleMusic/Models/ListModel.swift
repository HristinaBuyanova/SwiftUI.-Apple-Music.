
import Foundation
import SwiftUI

struct List: Hashable, Identifiable {
    var id = UUID()
    var title: String
    private var icon: String
    var isEdit = false
    var selectIcon = "checkmark.circle.fill"
    var unSelectIcon = "circle"

    var image: Image {
        Image(systemName: icon)
    }

    var circle: Image {
        Image(systemName: isEdit ? selectIcon : unSelectIcon)
    }


}

extension List {
    static var data: [List] = [List(title: "Плейлисты", icon: "music.note.list"),
                               List(title: "Артисты", icon: "music.mic"),
                               List(title: "Альбомы", icon: "square.stack"),
                               List(title: "Песни", icon: "music.note"),
                               List(title: "Телешоу и фильмы", icon: "display"),
                               List(title: "Видеоклипы", icon: "music.note.tv"),
                               List(title: "Жанры", icon: "guitars"),
                               List(title: "Сборники", icon: "person.2.crop.square.stack"),
                               List(title: "Авторы", icon: "music.quarternote.3"),
                               List(title: "Загружено", icon: "arrowshape.down.circle"),
                               List(title: "Домашняя коллекция", icon: "music.note.house")]

    mutating func toggleSelection() {
        isEdit.toggle()
    }

}



