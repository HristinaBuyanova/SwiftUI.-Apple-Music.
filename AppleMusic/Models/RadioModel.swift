

import Foundation

struct RadioModel: Identifiable {
    var id = UUID()
    var title: String
    var firstDescription: String
    var secondDescription: String
    var imageName: String
}

extension RadioModel {
    static var data: [RadioModel] = [
        RadioModel(title: "Музыкальный базар с Бастой", firstDescription: "Новый выпуск", secondDescription: "Новое шоу", imageName: "basta"),
        RadioModel(title: "Популярное", firstDescription: "Избранная радиостанция", secondDescription: "То, что слушают прямо сейчас", imageName: "popular"),
        RadioModel(title: "ХИП-ХОП", firstDescription: "Избранная радиостанция", secondDescription: "Идеальные биты и рифмы", imageName: "hip-hop"),
        RadioModel(title: "ПОП-Музыка для тренировок", firstDescription: "Избранная радиостанция", secondDescription: "Вперед и с музыкой!", imageName: "pop"),
        RadioModel(title: "Классика рока", firstDescription: "Новая радиостанция", secondDescription: "Гении гитарного звука", imageName: "rock")
    ]
}
