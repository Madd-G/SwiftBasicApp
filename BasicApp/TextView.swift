//
//  TextView.swift
//  BasicApp
//
//  Created by Akhmad Nur Alamsyah on 24/11/24.
//

import SwiftUI

struct TextView: View {
    let text: String
    let color: Color
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10.0, y: 10.0)
    }
}

#Preview {
    VStack {
        TextView(text: "Hello World", color: .red)
        TextView(text: "Hello There", color: .green)
    }}
