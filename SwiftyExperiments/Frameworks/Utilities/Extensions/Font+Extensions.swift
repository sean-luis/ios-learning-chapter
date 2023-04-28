import SwiftUI

public enum FontWeight {
    case light
    case regular
    case semibold
    case bold
}

public extension Font {
    static var defaultFontFamilyDescription: String { "OpenSans" }
    
    static var regular13: Font { customFont(ofSize: 13, weight: .regular) }
    static var regular15: Font { customFont(ofSize: 15, weight: .regular) }
    static var regular17: Font { customFont(ofSize: 17, weight: .regular) }
    static var regular20: Font { customFont(ofSize: 17, weight: .regular) }
    
    static var light13: Font { customFont(ofSize: 13, weight: .light) }
    static var light15: Font { customFont(ofSize: 13, weight: .light) }
    static var light17: Font { customFont(ofSize: 13, weight: .light) }
    
    static var semibold13: Font { customFont(ofSize: 13, weight: .semibold) }
    static var semibold15: Font { customFont(ofSize: 13, weight: .semibold) }
    static var semibold17: Font { customFont(ofSize: 13, weight: .semibold) }
    
    static var bold13: Font { customFont(ofSize: 13, weight: .bold) }
    static var bold15: Font { customFont(ofSize: 13, weight: .bold) }
    static var bold17: Font { customFont(ofSize: 13, weight: .bold) }
    
    static func customFont(ofSize size: CGFloat, weight: FontWeight) -> Font {
        var fontName = defaultFontFamilyDescription
        
        switch weight {
        case .light:
            fontName += "Light"
        case .regular:
            fontName += "Regular"
        case .semibold:
            fontName += "Semibold"
        case .bold:
            fontName += "Bold"
        }
        
        return Font.custom(fontName, size: size)
    }
    
    static func systemFont(ofSize size: CGFloat, weight: FontWeight) -> Font {
        switch weight {
        case .bold:
            return Font.system(size: size, weight: .bold, design: .default)
        case .semibold:
            return Font.system(size: size, weight: .semibold, design: .default)
        case .regular:
            return Font.system(size: size, weight: .regular, design: .default)
        case .light:
            return Font.system(size: size, weight: .light, design: .default)
        }
    }
}
