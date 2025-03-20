import SwiftUI

struct HeaderView: View {
    @ObservedObject var viewModel: MRDetailViewModel
    
    var body: some View {
        HStack(spacing: 15) {
            // Ícone de CI
            Image(systemName: "checkmark.circle")
                .font(.system(size: 20))
                .foregroundColor(viewModel.ciPassed ? .green : .red)
            
            // Status
            Text(viewModel.status)
                .font(.system(size: 16, weight: .medium))
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(statusBackground)
                .cornerRadius(6)
            
            Spacer()
            
            // Botão de Merge
            Button(action: {
                // Lógica de merge será adicionada depois
                print("Merge clicado")
            }) {
                Text("Merge")
                    .font(.system(size: 14, weight: .medium))
                    .frame(width: 80, height: 30)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(6)
            }
            .buttonStyle(PlainButtonStyle())
            
            // Botão de Opções
            Button(action: {
                // Lógica de opções será adicionada depois
                print("Opções clicado")
            }) {
                Image(systemName: "ellipsis")
                    .font(.system(size: 16))
                    .frame(width: 30, height: 30)
                    .background(Color(.systemGray))
                    .cornerRadius(6)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .frame(maxWidth: .infinity)
    }
    
    private var statusBackground: Color {
        switch viewModel.status {
        case "Aprovado": return .green.opacity(0.1)
        case "Precisa de Trabalho": return .red.opacity(0.1)
        default: return .gray.opacity(0.1)
        }
    }
}
