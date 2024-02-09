

import SwiftUI

struct BlurView: UIViewRepresentable {

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }

    func makeUIView(context: Context) -> some UIView {

        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialLight))

        return view
    }
}
