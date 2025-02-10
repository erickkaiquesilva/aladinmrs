import SwiftUI

struct ServiceBoxView: View {

    // MARK: - Properties
    let name: String
    let imageName: String
    let isSelected: Bool
    let didConfirme: (String) -> Void
    let didDeselect: () -> Void
    let didSelect: () -> Void

    // MARK: - States
    @State var text: String = ""

    var body: some View {
        HStack(spacing: 4) {
            Button(action: didSelect) {
                HStack {
                    Text(name)
                        .font(.titleLarge)
                }
                .padding()
                .frame(maxWidth: isSelected ? .infinity : 200)
                .background(isSelected ? Color.gray.opacity(0) : Color.gray.opacity(0.2))
                .cornerRadius(10)
                .animation(.spring(), value: isSelected)
            }
            .buttonStyle(PlainButtonStyle())
            .frame(width: 250)

            if isSelected {
                VStack(spacing: 8) {
                    CustomTextField(
                        text: $text,
                        placeholder: "Informe seu token",
                        width: 450,
                        height: 35
                    )
                    HStack(spacing: 4) {
                        Button(action: didDeselect) {
                            Text("Voltar para o inicio")
                        }
                        .buttonStyle(
                            CustomButtonStyle(
                                textColor: .white,
                                backgroundColor: .clear,
                                height: 35,
                                width: nil,
                                font: .buttonLight
                            )
                        )
                        Button {
                            didConfirme(text)
                        } label: {
                            Text("Autenticar")
                        }
                        .buttonStyle(
                            CustomButtonStyle(
                                textColor: .white,
                                backgroundColor: .backgroundPrimary,
                                height: 35,
                                width: nil,
                                font: .buttonRegular
                            )
                        )
                    }
                }
            }
        }
    }
}

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        TextField(placeholder, text: $text)
            .frame(width: width, height: height)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
            )
            .padding()
            .font(.custom("HelveticaNeue", size: 18))
            .textFieldStyle(PlainTextFieldStyle()) // Remove o estilo padrão com seleção azul
            .accentColor(.clear) // Remove a cor do cursor
    }
}
