import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {

    let type: ButtonType

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(type.font)
            .padding()
            .frame(height: type.height)
            .background(.colorButtonPrimary)
            .foregroundColor(.colorTertiary)
            .cornerRadius(Radius.xSmall.rawValue)
            .scaleEffect(configuration.isPressed ? 0.90 : 1.0)
    }
}
