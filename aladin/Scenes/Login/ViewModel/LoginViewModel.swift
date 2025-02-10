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
        /// TODO implement logic for select item
    }

    func deselectedRepository() {
        /// TODO implement logic for deselect item selected
    }

    func authentication(with token: String) {
        /// TODO implement logic for authentication user on the repository service
    }
}
