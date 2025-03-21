import Foundation
import NetworkLayer

protocol HomeRepositoryType {

    func fetchAllProject(
        idUser: Int,
        completion: @escaping (Result<[ProjectResponse], Error>) -> Void
    )
}

final class HomeRepository {

    // MARK: - Private properties
    private let network: NetworkLayer

    // MARK: - Initializer
    init(network: NetworkLayer = NetworkFactory.shared.getNetworkLayer()) {
        self.network = network
    }
}
// MARK: - HomeRepositoryType
extension HomeRepository: HomeRepositoryType {

    func fetchAllProject(
        idUser: Int,
        completion: @escaping (Result<[ProjectResponse], Error>) -> Void
    ) {
        let service: HomeService = .init(idUser: idUser)
        network.request(object: [ProjectResponse].self, service: service, completion: completion)
    }
}
