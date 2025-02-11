import SwiftUI

struct LinkButtonStyle: ButtonStyle {

    let type: ButtonType
    let icon: Image?

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            if let icon = icon {
                icon
            }
            configuration.label
                .font(type.font)
        }
        .padding()
        .frame(height: type.height)
        .foregroundColor(.colorTertiary)
        .background(configuration.isPressed ? .colorButtonSecondary.opacity(0.5) : .colorButtonSecondary)
        .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}

