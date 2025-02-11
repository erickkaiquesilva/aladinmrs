//
//  aladinApp.swift
//  aladin
//
//  Created by Magalu on 10/02/25.
//

import SwiftUI

@main
struct aladinApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel: LoginViewModel = .init()
            LoginView(viewModel: viewModel)
        }
    }
}
