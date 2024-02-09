
import Foundation

struct StationModel: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var imageName: String
}

extension StationModel {
    static var data: [StationModel] = [
        StationModel(title: "Музыка для расслабления", description: "Электронная медитация", imageName: "relax"),
        StationModel(title: "Популярное", description: "То, что слушают сейчас", imageName: "popular"),
        StationModel(title: "Классика рока", description: "Гении гитарного звука", imageName: "rock"),
        StationModel(title: "Классика", description: "Выдающиеся образцы жанра", imageName: "classic"),
        StationModel(title: "Хип-Хоп", description: "Идеальные биты и рифмы", imageName: "hip-hop")
    ]
}
