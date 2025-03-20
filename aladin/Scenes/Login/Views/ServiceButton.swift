import SwiftUI

struct ServiceButton: View {
    let title: String
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        Button(action: {
            viewModel.selectedService = title
        }) {
            Text(title)
                .font(.system(size: 14, weight: .medium))
                .frame(width: 100, height: 40)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
