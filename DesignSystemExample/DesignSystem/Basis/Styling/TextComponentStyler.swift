import UIKit

protocol TextComponentStyler: ComponentStylerAbstract {
    var fontStyle: FontStyleAbstract { get }
    func applyFont(to views: [UIView?])
}

extension TextComponentStyler {
    func applyFont(to views: [UIView?]) {
        views.forEach({ view in
            if let fontStyleable = view as? CustomizableFont {
                fontStyleable.textFont = fontStyle.font
            }
        })
    }
}
