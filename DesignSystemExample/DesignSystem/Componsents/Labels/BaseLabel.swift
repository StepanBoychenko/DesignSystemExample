import UIKit

protocol StyledLabel: class {
    var appliedStyle: Styler.Full? { get set }
}

protocol CustomizableLabel: class {
    func setup()
    func multilined() -> Self
    func singlelined() -> Self
    func setFontStyle(_ typography: Typography)
    func setTextColor(_ color: Color)
}

@IBDesignable
class Label: UILabel, CustomizableLabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() { }
    
    func multilined() -> Self {
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        return self
    }
    
    func singlelined() -> Self {
        self.numberOfLines = 1
        return self
    }
    
    func setFontStyle(_ typography: Typography) {
        self.font = typography.style.font
    }
    
    func setTextColor(_ color: Color) {
        self.textColor = color.color
    }
}
