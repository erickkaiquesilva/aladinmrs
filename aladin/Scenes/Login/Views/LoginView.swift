import SwiftUI

struct LoginView: View {

    @StateObject private var viewModel: /*TODO LoginViewModel*/
    private var backgroundColor: Color {
        switch viewModel.repositoryType {
        case .bitbucket:
            return .bitbucketBackground
        case .gitlab:
            return .gitlabBackground
        case .github:
            return .githubBackground
        case .none:
            return .colorPrimary
        }
    }

    init(viewModel: LoginViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            Text("Aladin Merge's")
                .font(.largeTitle)
                .foregroundStyle(.fontColorPrimary)
            if !viewModel.isLoading {
                ContainerServiceBoxView(
                    repositoryType: viewModel.repositoryType,
                    isSelected: viewModel.isSelectedRepository,
                    didSelected: viewModel.seletedRepository,
                    didDeselected: viewModel.deselectedRepository,
                    didConfirme: viewModel.authentication
                )
            }

            if viewModel.isLoading {
                /// TODO implementation component loading
            }

            if viewModel.errorState {
                /// TODO implementation component erro
            }
        }
        .padding()
        .background(WindowCapturer())
        .onChange(of: viewModel.repositoryType) {
            WindowManager.setWindowBackground(color: backgroundColor)
        }
        .onAppear {
            WindowManager.setWindowBackground(color: .colorPrimary)
        }
    }
}

//#Preview {
//    LoginView()
//}
