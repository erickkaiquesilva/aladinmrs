import Foundation
import NetworkLayer

final class LoginViewModel: ObservableObject {

    // MARK: - Published properties
    @Published var selectedService: String?
    @Published var server: String = ""
    @Published var accessKey: String = ""
    @Published var shouldNavigateToHome: Bool = false
    @Published var userResponse: UserResponse?

    // MARK: - Private properties
    private let repository: LoginRepositoryType

    // MARK: - Initializer
    init(repository: LoginRepositoryType = LoginRepository()) {
        self.repository = repository
    }

    func reset() {
        selectedService = nil
        server = ""
        accessKey = ""
    }

    func authentication() {
        let infosAuthentication: (baseURL: String, path: String) = processServerInput(server)
        NetworkFactory.shared.setNetworkLayer(with: infosAuthentication.baseURL)
        repository.authentication(
            path: infosAuthentication.path,
            accessToken: accessKey
        ) { [weak self] result in
            switch result {
            case .success(let response):
                self?.userResponse = response
                self?.shouldNavigateToHome = true
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }

    private func processServerInput(_ input: String) -> (baseURL: String, path: String) {
        var cleanedInput = input.trimmingCharacters(in: .whitespacesAndNewlines)

        // Remove "https://" ou "http://" se presente
        if cleanedInput.hasPrefix("https://") {
            cleanedInput = String(cleanedInput.dropFirst(8))
        } else if cleanedInput.hasPrefix("http://") {
            cleanedInput = String(cleanedInput.dropFirst(7))
        }

        // Divide na primeira "/"
        let components = cleanedInput.split(separator: "/", maxSplits: 1)
        let baseURL = "https://" + String(components[0]) // Reconstrói com https
        let path = components.count > 1 ? "/" + components[1] : ""
        
        return (baseURL, path)
    }
}
