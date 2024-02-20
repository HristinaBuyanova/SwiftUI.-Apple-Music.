
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
        DetailSearchModel(title: "", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "", imageName: ""),
        DetailSearchModel(title: "", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "", imageName: "")
        ]),

        SeachModel(title: "Поп на русском", imageName: "поп на русском", secondTitle: "Время танцев", secondImage: ["image1", "image5", "image2"], detailArray: [
        DetailSearchModel(title: "", subtitle: "", description: "", imageDescription: "", imageName: ""),
        DetailSearchModel(title: "", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "", imageName: "")
        ]),

        SeachModel(title: "Поп", imageName: "поп", secondTitle: "", secondImage: ["image5", "image2", "image4"], detailArray: [
        DetailSearchModel(title: "", subtitle: "", description: "", imageDescription: "", imageName: ""),
        DetailSearchModel(title: "", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "", imageName: "")
        ]),

        SeachModel(title: "Альтернатива", imageName: "альтернатива", secondTitle: "", secondImage: ["image5", "image1", "image4"], detailArray: [
        DetailSearchModel(title: "", subtitle: "", description: "", imageDescription: "", imageName: ""),
        DetailSearchModel(title: "", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "", imageName: "")
        ]),

        SeachModel(title: "Пространственное звучание", imageName: "пространственное звучание", secondTitle: "", secondImage: ["image2", "image4", "image3"], detailArray: [
        DetailSearchModel(title: "", subtitle: "", description: "", imageDescription: "", imageName: ""),
        DetailSearchModel(title: "", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "", imageName: "")
        ]),

        SeachModel(title: "Хип-хоп на русском", imageName: "хип-хоп на русском", secondTitle: "", secondImage: ["image4", "image3", "image1"], detailArray: [
        DetailSearchModel(title: "", subtitle: "", description: "", imageDescription: "", imageName: ""),
        DetailSearchModel(title: "", subtitle: "Apple Music", description: "избранный плейлист", imageDescription: "", imageName: "")
        ]),
    ]
}
