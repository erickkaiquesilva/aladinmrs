import SwiftUI

struct AuthFormView: View {

    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Autenticar com \(viewModel.selectedService ?? "")")
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(.primary)

            VStack(spacing: 15) {
                TextField("Servidor (ex.: api.github.com)", text: $viewModel.server)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 300)
                
                SecureField("Chave de Acesso", text: $viewModel.accessKey)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 300)
            }

            HStack(spacing: 20) {
                Button(action: {
                    print("Autenticar com \(viewModel.server) e \(viewModel.accessKey)")
                }) {
                    Text("Autenticar")
                        .font(.system(size: 14, weight: .medium))
                        .frame(width: 100, height: 40)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: {
                    viewModel.reset()
                }) {
                    Text("Voltar")
                        .font(.system(size: 14, weight: .medium))
                        .frame(width: 100, height: 40)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}
