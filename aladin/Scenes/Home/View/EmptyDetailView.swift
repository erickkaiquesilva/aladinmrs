//
//  EmptyDetailView.swift
//  aladin
//
//  Created by Erick Silva on 20/03/25.
//


import SwiftUI

struct EmptyDetailView: View {
    var body: some View {
        VStack {
            Text("Detalhes")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(20)
    }
}
