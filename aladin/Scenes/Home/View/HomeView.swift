import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        HStack(spacing: 0) {
            MenuView(viewModel: viewModel)
                .frame(width: viewModel.isMenuCollapsed ? 60 : 200)
                .background(Color(.black))

            MRListView()
                .frame(maxWidth: .infinity)
                .background(Color(.black))

            EmptyDetailView()
                .frame(width: 300)
                .background(Color(.black))
        }
        .frame(minWidth: 800, minHeight: 500)
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
