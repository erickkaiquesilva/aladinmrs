import SwiftUI

struct LoginView: View {

    // MARK: - Private properties
    @StateObject private var viewModel: LoginViewModel

    // MARK: - Initializer
    init(viewModel: LoginViewModel = LoginViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack(spacing: 40) {
            if viewModel.selectedService == nil {
                InitialLoginView(viewModel: viewModel)
            } else {
                AuthFormView(viewModel: viewModel)
            }
        }
        .frame(minWidth: 400, minHeight: 300)
        .padding(30)
    }
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
