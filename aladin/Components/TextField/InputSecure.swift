import SwiftUI

struct InputSecure: View {

    @Binding var outputValue: String
    let placeholder: String
    let width: CGFloat?

    var body: some View {
        SecureField(placeholder, text: $outputValue)
            .frame(width: width != nil ? width : .infinity, height: 35)
            .padding()
            .background(.colorTertiary.opacity(0.2))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: Radius.medium.rawValue)
                    .stroke(Color.clear, lineWidth: 2)
            )
            .padding()
            .font(.createFont(type: .ralewayMedium, size: 14))
            .textFieldStyle(PlainTextFieldStyle())
            .accentColor(.clear)
    }
}
