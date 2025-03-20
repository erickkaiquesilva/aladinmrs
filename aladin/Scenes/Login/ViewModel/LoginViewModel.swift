import Foundation

final class LoginViewModel: ObservableObject {

    // MARK: - Published properties
    @Published var selectedService: String?
    @Published var server: String = ""
    @Published var accessKey: String = ""

    func reset() {
        selectedService = nil
        server = ""
        accessKey = ""
    }
}
