import SwiftUI

struct CommentListView: View {

    @ObservedObject var viewModel: MRDetailViewModel

    // Dados mockados para a UI
    private let mockComments = [
        ("1", "user1", "Comentário inicial sobre a MR."),
        ("2", "user2", "Precisa ajustar o código aqui."),
        ("3", "user3", "Aprovado, mas sugiro um teste extra.")
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Comentários")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.primary)

            ScrollView {
                LazyVStack(alignment: .leading, spacing: 15) {
                    ForEach(mockComments, id: \.0) { (id, author, text) in
                        CommentView(
                            viewModel: viewModel,
                            commentId: id,
                            author: author,
                            text: text
                        )
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}
