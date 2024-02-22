
import UIKit

class SeachViewController: UIViewController {

    var data = SeachModel.data

//    MARK: - UI

    private lazy var search: UISearchController = {
        let search = UISearchController()
        search.searchBar.placeholder = "Ваша медиатека"
        return search
    }()

    private lazy var categoryCollection: UICollectionView = {
        let layout = createLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.dataSource = self
        collection.delegate = self
        collection.register(SeachCollectionViewCell.self, forCellWithReuseIdentifier: SeachCollectionViewCell.identifier)
        collection.register(HeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCell.identifier)
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()

//    MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }

//    MARK: - Setup

    private func setupView() {
        view.backgroundColor = .systemBackground
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = search
        }

    private func setupHierarchy() {
        view.addSubview(categoryCollection)
        }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            categoryCollection.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            categoryCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            categoryCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            categoryCollection.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            categoryCollection.heightAnchor.constraint(equalToConstant: 900)
        ])
    }

    func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, _ in
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .estimated(120))
            let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)

            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(150))
            let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])

            let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
            layoutSection.interGroupSpacing = 10

            let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93), heightDimension: .estimated(30))
            let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: layoutSectionHeaderSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .top)
            layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
            layoutSection.contentInsets = NSDirectionalEdgeInsets(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0)

            return layoutSection
        }
    }
}

// MARK: - Extension

extension SeachViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: SeachCollectionViewCell.identifier,
            for: indexPath) as? SeachCollectionViewCell else { return UICollectionViewCell() }
        cell.configuration(model: data[indexPath.item])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCell.identifier, for: indexPath) as! HeaderCell
        header.label.text = "Поиск по категориям"
        return header
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailView = DetailViewControllerHosting(category: data[indexPath.item])
        if let navigator = navigationController {
            navigator.pushViewController(detailView, animated: true)
        }
    }
}
