import SwiftUI

struct MRListView: View {

    private let mockMRs = [
        ("Aprovado", "Feature: Novo Login", "MR test com descrição longa que será cortada", "22/01/2025", "23/01/2025"),
        ("Aguardando Revisão", "Bugfix: Correção de Crash", "MR test para bug", "20/01/2025", "21/01/2025"),
        ("Precisa de Trabalho", "Refactor: Código Legado", "MR test de refatoração", "18/01/2025", "19/01/2025")
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("MR's para Revisar")
                .font(.system(size: 24, weight: .semibold))
                .padding(.vertical, 15)
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray))

            ScrollView {
                LazyVStack(spacing: 10) {
                    ForEach(mockMRs, id: \.1) { (status, title, description, created, updated) in
                        MRCellView(
                            status: status,
                            title: title,
                            description: description,
                            createdDate: created,
                            updatedDate: updated
                        )
                    }
                }
                .padding(10)
            }
        }
    }
}
