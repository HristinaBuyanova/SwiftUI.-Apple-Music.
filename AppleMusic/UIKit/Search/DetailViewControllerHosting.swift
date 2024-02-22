

import SwiftUI

final class DetailViewControllerHosting: UIHostingController<DetailSearchView> {

    var category: SeachModel


    init(category: SeachModel) {
        self.category = category
        super.init(rootView: DetailSearchView(selectModel: category))
    }
    
    @objc
    required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
