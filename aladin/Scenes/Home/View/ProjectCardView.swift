import SwiftUI

struct ProjectCardView: View {

    // MARK: - Private properties
    @ObservedObject private var viewModel: HomeViewModel
    private let dto: ProjectDTO

    // MARK: - Initializer
    init(
        viewModel: HomeViewModel,
        dto: ProjectDTO
    ) {
        self.viewModel = viewModel
        self.dto = dto
    }

    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            // Imagem do projeto (ícone redondo 44x44)
            AsyncImage(url: dto.imageUrl) { phase in
                switch phase {
                case .empty:
                    Image(systemName: "folder.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                        .foregroundColor(.blue)
                        .clipShape(Circle())
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                case .failure:
                    Image(systemName: "folder.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                        .foregroundColor(.blue)
                        .clipShape(Circle())
                @unknown default:
                    Image(systemName: "folder.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                        .foregroundColor(.blue)
                        .clipShape(Circle())
                }
            }

            // Informações do projeto
            VStack(alignment: .leading, spacing: 8) {
                Text(dto.name)
                    .font(.descriptionXlarge)
                    .foregroundColor(.colorTertiary)

                Text(dto.description ?? "")
                    .font(.descriptionSmall)
                    .foregroundColor(.colorTertiary)
                    .lineLimit(2)
                    .truncationMode(.tail)

                Button(action: {
                    viewModel.openMRList(forProject: dto.id)
                }) {
                    Text("Ver MRs")
                        .font(.buttonSmall)
                        .frame(width: 80, height: 30)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding(15)
        .background(Color(.colorPrimary))
        .cornerRadius(10)
        .frame(maxWidth: .infinity)
    }
}
