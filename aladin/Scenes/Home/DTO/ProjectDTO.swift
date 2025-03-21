import Foundation

struct ProjectDTO: Equatable, Identifiable {

    // MARK: - Private properties
    let id: String
    let userName: String
    let name: String
    let description: String?
    let imageUrl: URL?

    // MARK: - Initializer
    init(
        id: String,
        userName: String,
        name: String,
        description: String?,
        imageUrl: String?
    ) {
        self.id = id
        self.userName = userName
        self.name = name
        self.description = description
        self.imageUrl = imageUrl != nil ? URL(string: imageUrl!) : nil
    }
}
