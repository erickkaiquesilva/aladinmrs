import Foundation

final class NavigationState: ObservableObject {
    @Published var currentRoute: AppRoute = .login

    func navigate(to route: AppRoute) {
        currentRoute = route
    }
}
