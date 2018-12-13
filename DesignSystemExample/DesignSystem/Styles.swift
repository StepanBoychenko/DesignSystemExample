import UIKit

protocol StyleAbstract {
    var theme: Theme { get }
    var base: Style.Base { get }
    var window: Style.Window { get }
    var label: Style.Label { get }
    var button: Style.Button { get }
    var tab: Style.Tab { get }
    
    mutating func set(theme: Theme)
}

struct Style: StyleAbstract {
    
    static let `default` = Style(theme: .light)
    
    
    var theme: Theme
    
    var base: Base
    var window: Window
    var label: Label
    var button: Button
    var tab: Tab
    
    init(theme: Theme) {
        self.theme = theme
        base = Base(theme: theme)
        window = Window(theme: theme)
        label = Label(theme: theme)
        button = Button(theme: theme)
        tab = Tab(theme: theme)
        resetGlobals()
    }
    
    mutating func set(theme: Theme) {
        guard self.theme != theme else { return }
        self.theme = theme
        base = Base(theme: theme)
        window = Window(theme: theme)
        label = Label(theme: theme)
        button = Button(theme: theme)
        tab = Tab(theme: theme)
        resetGlobals()
    }
    
    private func resetGlobals() {
        
        UIWindow.appearance().tintColor = window.default.foregroundColor.color
        
        UINavigationBar.appearance().tintColor = window.default.foregroundColor.color
        
        UIBarButtonItem.appearance().tintColor = window.default.foregroundColor.color
        
        UILabel.appearance().textColor = label.caption.foregroundColor.color
        UILabel.appearance().backgroundColor = label.caption.backgroundColor.color
        UILabel.appearance().font = label.caption.fontStyle.font
        
        UITextField.appearance().textColor = label.caption.foregroundColor.color
        UITextField.appearance().tintColor = Label(theme: theme.altered).caption.backgroundColor.color
        UITextField.appearance().font = label.caption.fontStyle.font
        
        UITabBar.appearance().tintAdjustmentMode = .normal
        UITabBar.appearance().tintColor = window.default.foregroundColor.color
    }
}
