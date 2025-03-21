import Foundation
import NetworkLayer

struct LoginService: NetworkLayerServiceType {

    let accessToken: String
    var path: String

    var httpMethod: HTTPMethod {
        .get
    }

    var header: [String : String]? {
        ["Authorization": "Bearer \(accessToken)"]
    }

    var body: (any Encodable)? {
        nil
    }

    var cache: Bool {
        false
    }
}
