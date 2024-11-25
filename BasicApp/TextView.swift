//
//  TextView.swift
//  BasicApp
//
//  Created by Akhmad Nur Alamsyah on 24/11/24.
//

import SwiftUI

struct TextView: View {
    let text: String
    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .yellow,
        .orange,
        Color(red: 0.5, green: 0, blue: 0),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0),
    ]
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10.0, y: 10.0)
            .onTapGesture {
                color = colors.randomElement() ?? .red
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello World", color: .red)
        TextView(text: "Hello There", color: .green)
    }}
