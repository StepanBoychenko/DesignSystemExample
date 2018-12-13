import UIKit

extension Label {
    typealias Header = LabelHeader
    typealias Title = LabelTitle
    typealias Subtitle = LabelSubtitle
    typealias Caption = LabelCaption
}

@IBDesignable final class LabelHeader: Label {
    override func setup() {
        super.setup()
        appStyle.label.header.apply(to: self)
    }
}

@IBDesignable final class LabelTitle: Label {
    override func setup() {
        super.setup()
        appStyle.label.title.apply(to: self)
    }
}

@IBDesignable final class LabelSubtitle: Label {
    override func setup() {
        super.setup()
        appStyle.label.subtitle.apply(to: self)
    }
}

@IBDesignable final class LabelCaption: Label {
    override func setup() {
        super.setup()
        appStyle.label.caption.apply(to: self)
    }
}
