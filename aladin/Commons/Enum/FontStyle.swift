import SwiftUI

extension Font {
    /// Extra Large Title Font (34pt, Bold)
    static let titleXlarge: Font = Font.custom(FontType.ralewayBold.rawValue, size: 34)

    /// Large Title Font (28pt, Medium)
    static let titleLarge: Font = Font.custom(FontType.ralewayMedium.rawValue, size: 28)

    /// Medium Title Font (24pt, Regular)
    static let titleMedium: Font = Font.custom(FontType.ralewayRegular.rawValue, size: 24)

    /// Small Title Font (20pt, Light)
    static let titleSmall: Font = Font.custom(FontType.ralewayLight.rawValue, size: 20)

    /// Extra Large Subtitle Font (26pt, Medium)
    static let subtitleXlarge: Font = Font.custom(FontType.ralewayMedium.rawValue, size: 26)

    /// Large Subtitle Font (22pt, Regular)
    static let subtitleLarge: Font = Font.custom(FontType.ralewayRegular.rawValue, size: 22)

    /// Medium Subtitle Font (18pt, Light)
    static let subtitleMedium: Font = Font.custom(FontType.ralewayLight.rawValue, size: 18)

    /// Small Subtitle Font (16pt, Thin)
    static let subtitleSmall: Font = Font.custom(FontType.ralewayThin.rawValue, size: 16)

    /// Extra Large Description Font (20pt, Regular)
    static let descriptionXlarge: Font = Font.custom(FontType.ralewayRegular.rawValue, size: 20)

    /// Large Description Font (18pt, Light)
    static let descriptionLarge: Font = Font.custom(FontType.ralewayLight.rawValue, size: 18)

    /// Medium Description Font (16pt, Thin)
    static let descriptionMedium: Font = Font.custom(FontType.ralewayThin.rawValue, size: 16)

    /// Small Description Font (14pt, Thin)
    static let descriptionSmall: Font = Font.custom(FontType.ralewayThin.rawValue, size: 14)

    /// Small Button Font(14pt, Regular)
    static let buttonSmall: Font = Font.custom(FontType.ralewayRegular.rawValue, size: 14)

    /// Regular Button Font(16pt, Regular)
    static let buttonRegular: Font = Font.custom(FontType.ralewayRegular.rawValue, size: 16)
    
    /// Create font style
    static func createFont(type: FontType, size: CGFloat) -> Self {
        return Font.custom(type.rawValue, size: size)
    }
}
