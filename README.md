# Design System Example
##### *Work In Progress*

### Что это?
Это пример организации в проекте UIKit'а (не Cocoa-фреймворк, а тот, который вам дали дизайнеры) с нужными для этого классами и расширениями.

### Что это дает?
- все UI-компоненты настраиваются в одном месте
- поддержка разных тем оформления приложения (в примере светлая и темная)
- компоненты не зависят от темы, темы не зависят от стилей, стили не зависят от примитивов (цветов, размеров кегля и проч.) 
- вы готовы к внезапному редизайну
- удобство создания компонентов

Вот так создается многострочный UILabel с нужными цветами текста и фона, кеглем, гарнитурой и жирностью согласно текущей теме оформления:
`let labelHeader = Label.Header().multilined()`
А вот кнопка, которая еще вдобавок получает tintColor и высоту по умолчанию:
`let button = Button.Main()`

Для применения стилей в xib'ах и storyboard'ах (они не умеют работать с nested-типами) используются, например, LabelHeader и ButtonMain. А Label.Header и Button.Main - это алиасы для создания компонентво программно.
Так же можно настраивать UIView, UITabBar и даже UIWindow. 

Легко создать стиль для других компонентов:

    struct Style: StyleAbstract {
    	...
    	var tab: Tab
    }

	...	
	
    struct Tab {
        let titleActive: Styler.Full
        let titleInactive: Styler.Full
        
        init(theme: Theme) {
            switch theme {
            case .light:
                titleActive = Styler.Full(backgroundColor: Palette.Background.electricViolet,
                                          foregroundColor: Palette.Foreground.white,
                                          typography: Typography.tabMain)
                titleInactive = Styler.Full(backgroundColor: Palette.Background.electricViolet,
                                            foregroundColor: Palette.Foreground.silver,
                                            typography: Typography.tabMain)
                
            case .dark:
                titleActive = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                          foregroundColor: Palette.Foreground.silver,
                                          typography: Typography.tabMain)
                titleInactive = Styler.Full(backgroundColor: Palette.Background.persianIndigo,
                                            foregroundColor: Palette.Foreground.electricViolet,
                                            typography: Typography.tabMain)
            }
        }
    }


Стили можно комбинировать

Выбор темы сохраняется, темы легко переключаются на лету
