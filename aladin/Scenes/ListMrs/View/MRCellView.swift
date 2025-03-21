import SwiftUI

struct MRCellView: View {

    // MARK: - Private properties
    private let status: String
    private let title: String
    private let description: String
    private let createdDate: String
    private let updatedDate: String

    // MARK: - Initializer
    init(
        status: String,
        title: String,
        description: String,
        createdDate: String,
        updatedDate: String
    ) {
        self.status = status
        self.title = title
        self.description = description
        self.createdDate = createdDate
        self.updatedDate = updatedDate
    }

    var body: some View {
        Button(action: {
            print("Clicou em: \(title)")
        }) {
            VStack(alignment: .leading, spacing: 5) {
                Text(status)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(statusColor)
                    .padding(.vertical, 2)
                    .padding(.horizontal, 6)
                    .background(statusBackground)
                    .cornerRadius(4)

                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.primary)

                Text(description.prefix(30) + (description.count > 30 ? "..." : ""))
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)

                Text("Criado: \(createdDate) - Atualizado: \(updatedDate)")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(10)
            .background(Color(.systemIndigo))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.systemGray), lineWidth: 1)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }

    private var statusColor: Color {
        switch status {
        case "Aprovado": return .green
        case "Aguardando Revisão": return .orange
        case "Precisa de Trabalho": return .red
        default: return .gray
        }
    }
    
    private var statusBackground: Color {
        statusColor.opacity(0.1)
    }
}
