import SwiftUI

struct ContainerServiceBoxView: View {

    var repositoryType: RepositoriesType
    var isSelected: Bool
    var didSelected: (RepositoriesType) -> Void
    var didDeselected: () -> Void
    var didConfirme: (String) -> Void

    var body: some View {
        HStack(spacing: Space.xSmall.rawValue) {
            if repositoryType == .github || repositoryType == .none {
                ServiceBoxView(
                    name: "Github",
                    imageName: "",
                    isSelected: isSelected,
                    didConfirme: didConfirme,
                    didDeselect: didDeselected
                ) {
                    didSelected(.github)
                }
                .frame(height: 300)
            }

            if repositoryType == .gitlab || repositoryType == .none {
                ServiceBoxView(
                    name: "GitLab",
                    imageName: "",
                    isSelected: isSelected,
                    didConfirme: didConfirme,
                    didDeselect: didDeselected
                ) {
                    didSelected(.gitlab)
                }
                .frame(height: 300)
            }

            if repositoryType == .bitbucket || repositoryType == .none {
                ServiceBoxView(
                    name: "Bitbucket",
                    imageName: "",
                    isSelected: isSelected,
                    didConfirme: didConfirme,
                    didDeselect: didDeselected
                ) {
                    didSelected(.bitbucket)
                }
                .frame(height: 300)
            }
        }
    }
}
