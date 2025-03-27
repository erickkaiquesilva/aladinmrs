import SwiftUI
import Foundation

@main
struct aladinApp: App {

    @StateObject var navigationState: NavigationState = .init()
    @StateObject var loginViewModel: LoginViewModel = .init()

    var body: some Scene {
        WindowGroup {
            switch navigationState.currentRoute {
            case .login:
                LoginView(viewModel: loginViewModel)
                    .environmentObject(navigationState)
            case .home(let userResponse):
                let homeViewModel: HomeViewModel = .init(user: userResponse)
                HomeView(viewModel: homeViewModel)
                    .environmentObject(navigationState)
            }
        }
    }
}
