import SwiftUI

struct MRDetailView: View {

    @StateObject private var viewModel = MRDetailViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HeaderView(viewModel: viewModel)

            Text(viewModel.title)
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.primary)

            Text(viewModel.description)
                .font(.system(size: 16))
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)

            CommentListView(viewModel: viewModel)
            
            Spacer()
        }
        .padding(20)
        .frame(minWidth: 400, minHeight: 500)
        .background(Color(.windowBackgroundColor))
    }
}

//struct MRDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MRDetailView()
//    }
//}
