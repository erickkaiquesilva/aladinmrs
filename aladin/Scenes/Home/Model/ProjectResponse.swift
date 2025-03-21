import Foundation

struct ProjectResponse: Equatable, Codable {

    // MARK: - Properties
    let id: Int
    let name: String
    let description: String?
    let createdAt: String
    let avatarUrl: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case createdAt = "created_at"
        case avatarUrl = "avatar_url"
    }
}
