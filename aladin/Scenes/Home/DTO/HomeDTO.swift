import Foundation

struct HomeDTO: Equatable {

    // MARK: - Properties
    let userName: String
    let listProjects: [ProjectDTO]

    // MARK: - Initializer
    init(
        userName: String = "",
        listProjects: [ProjectDTO] = []
    ) {
        self.userName = userName
        self.listProjects = listProjects
    }
}
