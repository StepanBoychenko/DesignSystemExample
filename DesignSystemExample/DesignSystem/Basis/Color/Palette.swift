import UIKit

/**
 - нейминг:
 - название палитры должно отображать ее функциональное назначение, а не конкретный UI-компонент
 - название цвета в палитре должно описывать [цвет](http://chir.ag/projects/name-that-color)
 - important:
 Прямой доступ к цветам из палитр - только в крайнем случае, используйте Style.
 */
struct Palette {
    
    enum Base {
        /// - #000000
        /// - RGB: 0, 0, 0
        static let black = Color(hex: 0x000000)
        /// - #ffffff
        /// - RGB: 255, 255, 255
        static let white = Color(hex: 0xffffff)
    }
    
    enum Common {
        /// - #A23DFF
        /// - RGB: 162, 61, 255
        static let electricViolet = Color(hex: 0xA23DFF)
    }
    
    enum Foreground {
        /// - #303030
        /// - RGB: 48, 48, 48
        static let mineShaft = Color(hex: 0x303030)
        /// - #545454
        /// - RGB: 84, 84, 84
        static let emperor = Color(hex: 0x545454)
        /// - #454545
        /// - RGB: 69, 69, 69
        static let tundora = Color(hex: 0x454545)
        /// - #FF3D59
        /// - RGB: 255, 61, 89
        static let radicalRed = Color(hex: 0xFF3D59)
        /// - #7D7BE0
        /// - RGB: RGB: 125, 123, 224
        static let chetwodeBlue = Color(hex: 0x7D7BE0)
        /// - #BFBFBF
        /// - RGB: 191, 191, 191
        static let silver = Color(hex: 0xBFBFBF)
    }
    
    enum Background {
        /// - #000000
        /// - RGB: 0, 0, 0
        static let black = Base.black
        /// - #ffffff
        /// - RGB: 255, 255, 255
        static let white = Base.white
        /// - #F2F2F2
        /// - RGB: 242, 242, 242
        static let concrete = Color(hex: 0xF2F2F2)
        /// - #303030
        /// - RGB: 48, 48, 48
        static let mineShaft = Color(hex: 0x303030)
        /// - #2C166F
        /// - RGB: 44, 22, 111
        static let persianIndigo = Color(hex: 0x2C166F)
    }
}
