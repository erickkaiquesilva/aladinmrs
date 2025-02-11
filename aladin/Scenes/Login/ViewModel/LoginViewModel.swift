import SwiftUI

@MainActor
final class LoginViewModel: ObservableObject {

    // MARK: - Publish properties
    @Published var isLoading: Bool = false
    @Published var errorMessage: String = ""
    @Published var errorState: Bool = false
    @Published var repositoryType: RepositoriesType = .none
    @Published var isSelectedRepository: Bool = false

    // MARK: - Initializer

    init() {
        
    }

    // MARK: Public methods

    func seletedRepository(type: RepositoriesType) {
        if repositoryType != type {
            repositoryType = type
            isSelectedRepository = true
        }
    }

    func deselectedRepository() {
        if isSelectedRepository {
            repositoryType = .none
            isSelectedRepository = false
        }
    }

    func authentication(with token: String) {
        /// TODO implement logic for authentication user on the repository service
    }
}
