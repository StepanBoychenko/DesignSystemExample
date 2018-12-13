extension Style {
    
    struct Base {
        let main: Styler.Base
        
        init(theme: Theme) {
            switch theme {
            case .light:
                main = Styler.Base(backgroundColor: Palette.Background.white)
                
            case .dark:
                main = Styler.Base(backgroundColor: Palette.Background.mineShaft)
            }
        }
    }
    
    struct Window {
        let `default`: Styler.Colorizer
        
        init(theme: Theme) {
            switch theme {
            case .light:
                `default` = Styler.Colorizer(backgroundColor: Palette.Background.white,
                                             foregroundColor: Palette.Background.persianIndigo)
            case .dark:
                `default` = Styler.Colorizer(backgroundColor: Palette.Background.mineShaft,
                                             foregroundColor: Palette.Common.electricViolet)
            }
        }
    }
    
    struct Label {
        let header: Styler.Full
        let title: Styler.Full
        let subtitle: Styler.Full
        let caption: Styler.Full
        let forgetting: Styler.Full
        
        init(theme: Theme) {
            switch theme {
            case .light:
                let base = Styler.Full(backgroundColor: Palette.Background.white,
                                       foregroundColor: Palette.Foreground.tundora,
                                       typography: .caption)
                header = base
                    .with(typography: .header)
                    .with(foregroundColor: Palette.Foreground.mineShaft)
                title = base
                    .with(typography: .title)
                subtitle = base
                    .with(typography: .subtitle)
                caption = base
                    .with(typography: .caption)
                    .with(foregroundColor: Palette.Foreground.emperor)
                forgetting = base
                    .with(typography: .forgetting)
                
            case .dark:
                let base = Styler.Full(backgroundColor: Palette.Background.mineShaft,
                                       foregroundColor: Palette.Foreground.silver,
                                       typography: .caption)
                header = base
                    .with(typography: .header)
                title = base
                    .with(typography: .title)
                subtitle = base
                    .with(typography: .subtitle)
                caption = base
                    .with(typography: .caption)
                forgetting = base
                    .with(typography: .forgetting)
            }
        }
    }
    
    struct Button {
        let small: Styler.Full
        let smallError: Styler.Full
        let wide: Styler.Full
        let inline: Styler.Full
        
        init(theme: Theme) {
            switch theme {
            case .light:
                small = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                    foregroundColor: Palette.Foreground.silver,
                                    typography: Typography.buttonSmall)
                smallError = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                         foregroundColor: Palette.Foreground.radicalRed,
                                         typography: Typography.buttonSmall)
                wide = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                   foregroundColor: Palette.Common.electricViolet,
                                   typography: Typography.buttonWide)
                inline = Styler.Full(backgroundColor: Palette.Background.white,
                                     foregroundColor: Palette.Foreground.chetwodeBlue,
                                     typography: .caption)
                
            case .dark:
                small = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                    foregroundColor: Palette.Foreground.silver,
                                    typography: Typography.buttonSmall)
                smallError = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                         foregroundColor: Palette.Foreground.radicalRed,
                                         typography: Typography.buttonSmall)
                wide = Styler.Full(backgroundColor: Palette.Common.electricViolet,
                                   foregroundColor: Palette.Background.persianIndigo,
                                   typography: Typography.buttonWide)
                inline = Styler.Full(backgroundColor: Palette.Background.mineShaft,
                                     foregroundColor: Palette.Foreground.chetwodeBlue,
                                     typography: .caption)
            }
        }
    }
    
    struct Tab {
        let titleActive: Styler.Full
        let titleInactive: Styler.Full
        
        init(theme: Theme) {
            switch theme {
            case .light:
                titleActive = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                          foregroundColor: Palette.Foreground.silver,
                                          typography: Typography.buttonWide)
                titleInactive = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                            foregroundColor: Palette.Foreground.silver,
                                            typography: Typography.buttonWide)
                
            case .dark:
                titleActive = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                          foregroundColor: Palette.Foreground.silver,
                                          typography: Typography.buttonWide)
                titleInactive = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                            foregroundColor: Palette.Foreground.silver,
                                            typography: Typography.buttonWide)
            }
        }
    }
}
