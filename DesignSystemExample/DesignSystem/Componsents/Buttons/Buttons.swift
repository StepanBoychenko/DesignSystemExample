import UIKit

@IBDesignable
final class ButtonMain: Button {
    
    override class var height: CGFloat { return 49 }
    
    override func setup() {
        super.setup()
        appStyle.button.wide.apply(to: self)
    }
}

@IBDesignable
final class ButtonInline: Button {
    
    override class var height: CGFloat { return 24 }
    
    override func setup() {
        super.setup()
        appStyle.button.inline.apply(to: self)
    }
}

extension Button {
    typealias Main = ButtonMain
    typealias Inline = ButtonInline
}
