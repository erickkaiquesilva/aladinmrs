import Foundation

struct ProjectDTO: Identifiable {

    // MARK: - Private properties
    let id: String
    let name: String
    let description: String?
    let imageUrl: URL?

    // MARK: - Initializer
    init(
        id: String,
        name: String,
        description: String?,
        imageUrl: String?
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.imageUrl = imageUrl != nil ? URL(string: imageUrl!) : nil
    }
}
