

import UIKit

class HeaderCell: UICollectionReusableView {
    
    static let identifier = "header"

    //    MARK: - Outlets

        lazy var label: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

    //    MARK: - Init

        override init(frame: CGRect) {
            super.init(frame: frame)
            clipsToBounds = true
            setupHierarchy()
            setupLayout()
        }

    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

    //    MARK: - Setup

        private func setupHierarchy() {
            addSubview(label)
        }

        private func setupLayout() {
            NSLayoutConstraint.activate([
                label.bottomAnchor.constraint(equalTo: bottomAnchor),
                label.leadingAnchor.constraint(equalTo: leadingAnchor)
            ])
        }

        override func prepareForReuse() {
            super.prepareForReuse()
            label.text = nil
        }
}
