import Foundation

final class HomeViewModel: ObservableObject {

    // MARK: - Published properties
    @Published var isMenuCollapsed: Bool = false
    @Published var hasError: Bool = false
    @Published var homeDto: HomeDTO = .init()

    // MARK: - Private properties
    private let user: UserResponse
    private let repository: HomeRepositoryType

    // MARK: - Initializer
    init(
        user: UserResponse,
        repository: HomeRepositoryType = HomeRepository()
    ) {
        self.user = user
        self.repository = repository
    }

    func loadProjects() {
        repository.fetchAllProject(idUser: user.id) { [weak self] result in
            switch result {
            case .success(let response):
                self?.buildDTO(response)
            case .failure(let err):
                print(err)
            }
        }
    }

    func openMRList(forProject: String) {
        print(forProject)
    }
}

private extension HomeViewModel {
    func buildDTO(_ object: [ProjectResponse]) {
        let projectDto = object.compactMap {
            ProjectDTO(
                id: "\($0.id)",
                userName: user.name,
                name: $0.name,
                description: $0.description,
                imageUrl: $0.avatarUrl
            )
        }

        homeDto = .init(
            userName: user.name,
            listProjects: projectDto
        )
    }
}
