import UIKit

protocol ComponentStylerAbstract: class {
    var backgroundColor: Color { get }
    func apply(to view: UIView?)
    func apply(to views: [UIView?])
}

extension ComponentStylerAbstract {
    
    func apply(to view: UIView?) {
        apply(to: [view])
    }
    
    func apply(to views: [UIView?]) {
        views.forEach({ $0?.backgroundColor = backgroundColor.color })
        if let textStyler = self as? TextComponentStyler {
            textStyler.applyFont(to: views)
        }
        if let foregroundStyler = self as? ComponentFaceStyler {
            foregroundStyler.applyForegroundColor(to: views)
        }
    }
}
