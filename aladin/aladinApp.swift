import SwiftUI

@main
struct aladinApp: App {

    @StateObject var loginViewModel: LoginViewModel = .init()

    var body: some Scene {
        WindowGroup {
            if loginViewModel.shouldNavigateToHome, let user = loginViewModel.userResponse {
                let homeViewModel: HomeViewModel = .init(user: user)
                HomeView(viewModel: homeViewModel)
            } else {
                LoginView(viewModel: loginViewModel)
            }
        }
    }
}
