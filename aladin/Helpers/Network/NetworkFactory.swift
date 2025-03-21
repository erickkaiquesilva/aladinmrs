import Foundation
import NetworkLayer

final class NetworkFactory {

    static var shared: NetworkFactory = .init()

    // MARK: - Private propertie
    private var network: NetworkLayer?

    // MARK: - Private init
    private init() {}

    func setNetworkLayer(with baseUrl: String) {
        self.network = NetworkLayer(baseUrl: baseUrl, delegate: nil)
    }

    func getNetworkLayer() -> NetworkLayer {
        guard let network = network else { return .init(baseUrl: "", delegate: nil) }
        return network
    }
}
