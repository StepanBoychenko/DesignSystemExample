enum Theme: String, CaseIterable {
    
    case light
    case dark
    
    var altered: Theme {
        switch self {
        case .dark:
            return .light
        case .light:
            return .dark
        }
    }
    
    /// Stored in user defaults
    var codeName: String {
        return self.rawValue
    }
    
    init?(codeName: String?) {
        guard let codeName = codeName else {
            return nil
        }
        for theme in Theme.allCases {
            if theme.codeName.uppercased() == codeName.uppercased() {
                self = theme
                return
            }
        }
        return nil
    }
}

import Foundation
extension Theme {
    
    func save() {
        UserDefaults.standard.set(codeName, forKey: "theme")
    }
    
    static func restore() -> Theme? {
        return Theme(codeName: UserDefaults.standard.string(forKey: "theme"))
    }
}
