import Foundation

struct UserResponse: Equatable, Codable {

    // MARK: - Properties
    let id: Int
    let name: String
    let avatarUrl: String?
    let url: String?
    let login: String?
    let email: String?
    let bio: String?
    let publicRepos: Int?
    let createdAt: String?
    let updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case avatarUrl = "avatar_url"
        case url
        case login
        case email
        case bio
        case publicRepos = "public_repos"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}
