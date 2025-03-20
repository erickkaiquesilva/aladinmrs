import SwiftUI

struct CommentView: View {

    // MARK: - Properties
    @ObservedObject private var viewModel: MRDetailViewModel
    private let commentId: String
    private let author: String
    private let text: String

    // MARK: Initializer
    init(viewModel: MRDetailViewModel, commentId: String, author: String, text: String) {
        self.viewModel = viewModel
        self.commentId = commentId
        self.author = author
        self.text = text
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Avatar e informações do autor
            HStack(spacing: 10) {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(author)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.primary)
                    
                    Text(text)
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                }
            }
            
            // Botão Responder
            Button(action: {
                viewModel.selectedCommentId = commentId
                viewModel.replyText = ""
            }) {
                Text("Responder")
                    .font(.system(size: 12, weight: .medium))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.blue.opacity(0.1))
                    .foregroundColor(.blue)
                    .cornerRadius(4)
            }
            .buttonStyle(PlainButtonStyle())
            
            // Formulário de resposta (se selecionado)
            if viewModel.selectedCommentId == commentId {
                VStack(spacing: 10) {
                    TextField("Digite sua resposta", text: $viewModel.replyText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: .infinity)
                    
                    HStack(spacing: 10) {
                        Button(action: {
                            // Lógica de publicar será adicionada depois
                            print("Resposta: \(viewModel.replyText)")
                            viewModel.selectedCommentId = nil
                        }) {
                            Text("Publicar")
                                .font(.system(size: 12, weight: .medium))
                                .frame(width: 80, height: 30)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(6)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            viewModel.selectedCommentId = nil
                            viewModel.replyText = ""
                        }) {
                            Text("Cancelar")
                                .font(.system(size: 12, weight: .medium))
                                .frame(width: 80, height: 30)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(6)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.top, 5)
            }
        }
        .padding(10)
        .background(Color(.colorPrimary))
        .cornerRadius(8)
    }
}
