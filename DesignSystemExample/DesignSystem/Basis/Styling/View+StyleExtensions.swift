import UIKit
import Foundation

protocol CustomizableTextColor: class {
    var textColor: UIColor! { get set }
}

protocol CustomizableFont: class {
    var textFont: UIFont! { get set }
}

protocol CustomizableFontStyle: CustomizableTextColor, CustomizableFont { }

protocol CustomizableTint: class {
    var tintColor: UIColor! { get set }
}

extension UILabel: CustomizableFontStyle {
    
    var textFont: UIFont! {
        get {
            return self.font
        }
        set {
            self.font = newValue
        }
    }
}

extension UIButton: CustomizableFontStyle, CustomizableTint {
    var textFont: UIFont! {
        get {
            return self.titleLabel?.font
        }
        set {
            self.titleLabel?.font = newValue
        }
    }
    
    var textColor: UIColor! {
        get {
            return self.titleLabel?.textColor
        }
        set {
            UIView.performWithoutAnimation {
                self.setTitleColor(newValue, for: .normal)
            }
        }
    }
}

extension UIImageView: CustomizableTint {
    
}

extension UIWindow: CustomizableTint {
    
}
