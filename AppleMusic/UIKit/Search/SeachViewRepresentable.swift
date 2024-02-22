

import SwiftUI
import UIKit

struct SeachViewRepresentable: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {
        let navigationController = UINavigationController(rootViewController: SeachViewController())
        return navigationController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }

}
