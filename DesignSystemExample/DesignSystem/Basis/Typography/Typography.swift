import UIKit

protocol FontStyleAbstract: class {
    var font: UIFont { get }
}

final class FontStyle: FontStyleAbstract {
    
    let font: UIFont
    
    init(size: CGFloat,
         customFontFamily: CustomFontFamily) {
        font = UIFont.init(name: customFontFamily.fontName,
                           size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    init(size: CGFloat,
         weight: UIFont.Weight = .regular) {
        font = UIFont.systemFont(ofSize: size, weight: weight)
    }
}

/// Describes font name, size and weight
enum Typography {
    
    /// 24 medium
    case header
    /// 20 medium
    case title
    /// 16 regular
    case subtitle
    /// 14 regular
    case caption
    
    /// 17 SansForgetica-Regular
    case forgetting
    
    /// 16 regular
    case buttonInline
    /// 16 bold system
    case buttonWide
    /// 14 regular
    case buttonSmall
    
    /// 20 light
    case tabTitle
    
    var style: FontStyle {
        switch self {
        case .header:
            return FontStyle(size: 24, weight: .medium)
        case .title:
            return FontStyle(size: 20, weight: .medium)
        case .subtitle:
            return FontStyle(size: 16)
        case .caption:
            return FontStyle(size: 14)
            
        case .forgetting:
            return FontStyle(size: 17, customFontFamily: .sansForgeticaRegular)
            
        case .buttonSmall:
            return FontStyle(size: 16)
        case .buttonWide:
            return FontStyle(size: 16, weight: .black)
        case .buttonInline:
            return FontStyle(size: 14)
            
        case .tabTitle:
            return FontStyle(size: 20, weight: .light)
        }
    }
}
