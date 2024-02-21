
import Foundation

struct DetailSearchModel: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var subtitle: String
    var description: String
    var imageDescription: String
    var imageName: String

}

struct SeachModel: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var imageName: String
    var secondTitle: String
    var secondImage: [String]
    var detailArray: [DetailSearchModel]
}

extension SeachModel {
    static var data: [SeachModel] = [
        SeachModel(title: "Зимнее время", imageName: "зимнее время", secondTitle: "Настроние - осень", secondImage: ["image1", "image2", "image3"], detailArray: [
        DetailSearchModel(title: "Гербарий", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Спокойная и уютная инди музыка, которая вдохносит на год вперед", imageName: "зимнее время"),
        DetailSearchModel(title: "Зимние хиты", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Лучшие зимние хиты 2023 года", imageName: "зимнее время2")
        ]),

        SeachModel(title: "Поп на русском", imageName: "поп на русском", secondTitle: "Время танцев", secondImage: ["image1", "image5", "image2"], detailArray: [
        DetailSearchModel(title: "Новинки", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Новинки поп музыки", imageName: "поп на русском 2"),
        DetailSearchModel(title: "Хиты 90х", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Вспомним 90е, лчшие песни", imageName: "поп на русском")
        ]),

        SeachModel(title: "Поп", imageName: "поп", secondTitle: "Потанцуем", secondImage: ["image5", "image2", "image4"], detailArray: [
        DetailSearchModel(title: "Зарубежные исполнители", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "", imageName: "поп"),
        DetailSearchModel(title: "Майкл Джексон", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Король поп-музыки", imageName: "поп2")
        ]),

        SeachModel(title: "Альтернатива", imageName: "альтернатива", secondTitle: "Рок, поп, джаз...", secondImage: ["image5", "image1", "image4"], detailArray: [
        DetailSearchModel(title: "Новинки", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Погрузись в мир музыки", imageName: "альтернатива"),
        DetailSearchModel(title: "Альтернативный рок", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Новые исполнители", imageName: "альтернатива2")
        ]),

        SeachModel(title: "Пространственное звучание", imageName: "пространственное звучание", secondTitle: "Проснись и пой", secondImage: ["image2", "image4", "image3"], detailArray: [
        DetailSearchModel(title: "Улетный звук", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Поргрузись в музыку, остальное подождет", imageName: "пространственное звучание"),
        DetailSearchModel(title: "Альтернативный рок", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Новые исполнители", imageName: "альтернатива2")
        ]),

        SeachModel(title: "Хип-хоп на русском", imageName: "хип-хоп на русском", secondTitle: "Другие исполнители", secondImage: ["image4", "image3", "image1"], detailArray: [
        DetailSearchModel(title: "Лучшие исполнители", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Сборник лучших песен", imageName: "хип-хоп на русском"),
        DetailSearchModel(title: "Зимние хиты", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "Лучшие зимние хиты 2023 года", imageName: "зимнее время2")
        ]),
    ]
}
