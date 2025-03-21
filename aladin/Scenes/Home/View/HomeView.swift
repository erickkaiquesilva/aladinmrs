import SwiftUI

struct HomeView: View {

    // MARK: - Private properties
    @StateObject private var viewModel: HomeViewModel

    // MARK: - Initializer
    init(viewModel: HomeViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        HStack(spacing: 0) {
            MenuView(viewModel: viewModel)
                .frame(width: viewModel.isMenuCollapsed ? 60 : 200)
                .background(Color(.colorPrimary))

            ProjectListView(viewModel: viewModel)
                .frame(maxWidth: .infinity)
                .background(Color(.colorPrimary))

            EmptyDetailView()
                .background(Color(.colorPrimary))
        }
        .frame(minWidth: 800, minHeight: 500)
        .onAppear {
            viewModel.loadProjects()
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
