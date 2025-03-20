import Foundation

final class MRDetailViewModel: ObservableObject {
    @Published var ciPassed: Bool = true            // Status do CI (mockado por agora)
    @Published var status: String = "Aprovado"      // Status da MR
    @Published var title: String = "Feature: Novo Login" // Título da MR
    @Published var description: String = "MR test com descrição completa" // Descrição da MR
    @Published var selectedCommentId: String?       // ID do comentário sendo respondido
    @Published var replyText: String = ""           // Texto da resposta sendo escrita
}
