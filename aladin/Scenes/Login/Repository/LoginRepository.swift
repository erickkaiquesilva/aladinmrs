import Foundation
import NetworkLayer

protocol LoginRepositoryType {

    func authentication(
        path: String,
        accessToken: String,
        completion: @escaping (Result<UserResponse, Error>) -> Void
    )
}

final class LoginRepository {

    // MARK: Private properties
    private var network: NetworkLayer

    // MARK: Initializer
    init(network: NetworkLayer = NetworkFactory.shared.getNetworkLayer()) {
        self.network = network
    }
}
// MARK: - LoginRepositoryType
extension LoginRepository: LoginRepositoryType {

    func authentication(
        path: String,
        accessToken: String,
        completion: @escaping (Result<UserResponse, Error>) -> Void
    ) {
        network = NetworkFactory.shared.getNetworkLayer()
        let service: LoginService = .init(accessToken: accessToken, path: path)
        network.request(object: UserResponse.self, service: service, completion: completion)
    }
}
