
import Foundation
import SwiftUI

struct ListData: Hashable, Identifiable {
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

extension ListData {
    static var data: [ListData] = [ListData(title: "Плейлисты", icon: "music.note.list"),
                               ListData(title: "Артисты", icon: "music.mic"),
                               ListData(title: "Альбомы", icon: "square.stack"),
                               ListData(title: "Песни", icon: "music.note"),
                               ListData(title: "Телешоу и фильмы", icon: "display"),
                               ListData(title: "Видеоклипы", icon: "music.note.tv"),
                               ListData(title: "Жанры", icon: "guitars"),
                               ListData(title: "Сборники", icon: "person.2.crop.square.stack"),
                               ListData(title: "Авторы", icon: "music.quarternote.3"),
                               ListData(title: "Загружено", icon: "arrowshape.down.circle"),
                               ListData(title: "Домашняя коллекция", icon: "music.note.house")]

    mutating func toggleSelection() {
        isEdit.toggle()
    }

}



