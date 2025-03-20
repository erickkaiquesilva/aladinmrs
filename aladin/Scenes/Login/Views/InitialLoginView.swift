import SwiftUI

struct InitialLoginView: View {

    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        VStack(spacing: 20) {

            Text("Bem-vindo ao Aladin's")
                .font(.system(size: 36, weight: .bold))
                .foregroundColor(.primary)

            Text("Escolha um serviço para autenticação")
                .font(.system(size: 16))
                .foregroundColor(.secondary)

            HStack(spacing: 20) {
                ServiceButton(title: "Github", viewModel: viewModel)
                ServiceButton(title: "Bitbucket", viewModel: viewModel)
                ServiceButton(title: "GitLab", viewModel: viewModel)
            }
        }
    }
}
