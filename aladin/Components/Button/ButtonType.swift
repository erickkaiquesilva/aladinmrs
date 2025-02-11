import Foundation
import SwiftUI

enum ButtonType {

    case small
    case large
    case huge

    var font: Font {
        switch self {
        case .small:
            return .buttonSmall
        case .large, .huge:
            return .buttonRegular
        }
    }

    var height: CGFloat {
        switch self {
        case .small:
            return 24.0
        case .large:
            return 34.0
        case .huge:
            return 44.0
        }
    }
}
