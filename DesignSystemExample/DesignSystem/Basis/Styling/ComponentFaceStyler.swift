import UIKit

protocol ComponentFaceStyler: ComponentStylerAbstract {
    var foregroundColor: Color { get }
    func applyForegroundColor(to views: [UIView?])
}

extension ComponentFaceStyler {
    func applyForegroundColor(to views: [UIView?]) {
        views.forEach({ view in
            if let textStyleable = view as? CustomizableTextColor {
                textStyleable.textColor = foregroundColor.color
            }
            if let tintable = view as? CustomizableTint {
                tintable.tintColor = foregroundColor.color
            }
        })
    }
}
