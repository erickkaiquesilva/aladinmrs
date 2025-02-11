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
    @State var baseUrlService: String = ""
    @State var token: String = ""

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
                VStack(spacing: 2) {
                    InputNormal(
                        outputValue: $baseUrlService,
                        placeholder: "Informe o caminho base do serviço que você deseja se autenticar",
                        width: 350
                    )
                    InputSecure(
                        outputValue: $token,
                        placeholder: "Informe seu token para validar na seção",
                        width: 350
                    )
                    HStack(spacing: Space.large.rawValue) {
                        Button(action: didDeselect) {
                            Text("Voltar para o inicio")
                        }
                        .buttonStyle(LinkButtonStyle(type: .small, icon: nil))
                        Button {
                            didConfirme("")
                        } label: {
                            Text("Autenticar")
                        }
                        .buttonStyle(PrimaryButtonStyle(type: .large))
                    }
                }
            }
        }
    }
}
