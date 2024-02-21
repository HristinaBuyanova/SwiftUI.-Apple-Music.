

import UIKit

class SeachCollectionViewCell: UICollectionViewCell {

    static var identifier = "Cell"

//    MARK: - UI

    private lazy var picture: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var title: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

//    MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    MARK: - Setup

    func setupHierarchy() {
        self.addSubview(picture)
        self.addSubview(title)

    }

    func setupLayout() {
        NSLayoutConstraint.activate([
            picture.topAnchor.constraint(equalTo: contentView.topAnchor),
            picture.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            picture.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            picture.widthAnchor.constraint(equalToConstant: 170),
            picture.heightAnchor.constraint(equalToConstant: 120),

            title.bottomAnchor.constraint(equalTo: picture.bottomAnchor, constant: -20),
            title.leadingAnchor.constraint(equalTo: picture.leadingAnchor, constant: 10)
        ])
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.picture = picture
    }

//    MARK: - Config

    func configuration(model: SeachModel) {
        picture.image = UIImage(named: model.imageName)
        title.text = model.title
    }

}
