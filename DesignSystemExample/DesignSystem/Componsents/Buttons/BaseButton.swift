import UIKit

protocol CustomizableLabelButton: class {
    static var height: CGFloat { get }
    var height: CGFloat { get }
    func setup()
}

extension CustomizableLabelButton {
    var height: CGFloat { return type(of: self).height }
}

class Button: UIButton, CustomizableLabelButton {
    
    class var height: CGFloat { return 30 }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIScreen.main.bounds.width,
                      height: height)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    public convenience init() {
        self.init(type: .system)
    }
    
    func setup() { }
}
