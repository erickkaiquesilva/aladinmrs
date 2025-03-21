import Foundation
import NetworkLayer

struct HomeService: NetworkLayerServiceType {

    let idUser: Int

    var path: String {
        "/api/v4/users/\(idUser)/contributed_projects"
    }

    var httpMethod: HTTPMethod {
        .get
    }

    var header: [String : String]? {
        ["PRIVATE-TOKEN": "donotsavemegeB9hTCLyRzNB6zkUz2h"]
    }

    var body: (any Encodable)? {
        nil
    }

    var cache: Bool {
        false
    }
}
