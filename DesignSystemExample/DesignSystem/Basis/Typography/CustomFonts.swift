enum CustomFontFamily {
    case sansForgeticaRegular
    
    var fontName: String {
        switch self {
        case .sansForgeticaRegular:
            return "SansForgetica-Regular"
        }
    }
}
