import UIKit

enum Styler {
    
    class Base: ComponentStylerAbstract {
        var backgroundColor: Color
        
        init(backgroundColor: Color) {
            self.backgroundColor = backgroundColor
        }
    }
    
    class Colorizer: Styler.Base, ComponentFaceStyler {
        var foregroundColor: Color
        
        init(backgroundColor: Color,
             foregroundColor: Color) {
            self.foregroundColor = foregroundColor
            super.init(backgroundColor: backgroundColor)
        }
        
        func with(foregroundColor: Color) -> Styler.Colorizer {
            let copy = Colorizer(backgroundColor: backgroundColor,
                                 foregroundColor: foregroundColor)
            return copy
        }
    }
    
    final class Full: Styler.Colorizer, TextComponentStyler {
        var fontStyle: FontStyleAbstract
        
        init(backgroundColor: Color,
             foregroundColor: Color,
             fontStyle: FontStyleAbstract) {
            self.fontStyle = fontStyle
            super.init(backgroundColor: backgroundColor,
                       foregroundColor: foregroundColor)
        }
        
        convenience init(backgroundColor: Color,
                         foregroundColor: Color,
                         typography: Typography) {
            self.init(backgroundColor: backgroundColor,
                      foregroundColor: foregroundColor,
                      fontStyle: typography.style)
        }
        
        func with(fontStyle: FontStyleAbstract) -> Styler.Full {
            let copy = Full(backgroundColor: backgroundColor,
                            foregroundColor: foregroundColor,
                            fontStyle: fontStyle)
            return copy
        }
        
        func with(typography: Typography) -> Styler.Full {
            let copy = Full(backgroundColor: backgroundColor,
                            foregroundColor: foregroundColor,
                            fontStyle: typography.style)
            return copy
        }
        
        override func with(foregroundColor: Color) -> Styler.Full {
            let copy = Full(backgroundColor: backgroundColor,
                            foregroundColor: foregroundColor,
                            fontStyle: fontStyle)
            return copy
        }
    }
}
