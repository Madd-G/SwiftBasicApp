//
//  BackgroundView.swift
//  BasicApp
//
//  Created by Akhmad Nur Alamsyah on 25/11/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .myBlue1,
            .myBlue2
        ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
        .opacity(1)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
