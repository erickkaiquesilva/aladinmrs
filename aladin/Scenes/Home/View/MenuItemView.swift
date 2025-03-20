import SwiftUI

struct MenuItemView: View {
    let icon: String
    let title: String
    let isCollapsed: Bool
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: icon)
                .font(.system(size: 18))
                .frame(width: 40)
            
            if !isCollapsed {
                Text(title)
                    .font(.system(size: 16))
            }
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color(.systemGray))
        .cornerRadius(6)
    }
}
