import SwiftUI

struct ProjectListView: View {

    // MARK: - Private properties
    @ObservedObject private var viewModel: HomeViewModel

    // MARK: - Initializer
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Título
            Text("Projetos")
                .font(.subtitleXlarge)
                .padding(.vertical, 15)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.colorPrimary))

            // Grade de cards
            ScrollView {
                LazyVGrid(
                    columns: Array(repeating: GridItem(.flexible(), spacing: 0), count: 3),
                    alignment: .leading,
                    spacing: 0
                ) {
                    ForEach(viewModel.projectDto) { project in
                        ProjectCardView(
                            viewModel: viewModel,
                            dto: project
                        )
                        .frame(width: 250, height: 100)
                    }
                }
                .padding()
            }
        }
    }
}
