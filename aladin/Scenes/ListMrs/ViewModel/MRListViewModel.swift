import Foundation
import SwiftUI

final class MRListViewModel: ObservableObject {

    // MARK: - Private properties
    private let projectId: String
    @EnvironmentObject private var navigationState: NavigationState

    // MARK: - Initializer
    init(projectId: String) {
        self.projectId = projectId
    }
}
