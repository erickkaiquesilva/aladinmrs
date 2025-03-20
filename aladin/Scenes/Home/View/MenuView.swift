import SwiftUI

struct MenuView: View {

    @ObservedObject var viewModel: HomeViewModel

    private let menuItems = [
        ("house", "Home"),
        ("list.bullet", "Merge Requests"),
        ("gear", "Configurações"),
        ("person", "Perfil")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    viewModel.isMenuCollapsed.toggle()
                }
            }) {
                Image(systemName: viewModel.isMenuCollapsed ? "chevron.right" : "chevron.left")
                    .font(.system(size: 16))
                    .frame(width: 40, height: 40)
            }
            .buttonStyle(PlainButtonStyle())

            ForEach(menuItems, id: \.1) { (icon, title) in
                MenuItemView(
                    icon: icon,
                    title: title,
                    isCollapsed: viewModel.isMenuCollapsed
                )
            }
            
            Spacer()
        }
        .padding(.vertical, 10)
    }
}
