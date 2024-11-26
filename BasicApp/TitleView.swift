//
//  TitleView.swift
//  BasicApp
//
//  Created by Akhmad Nur Alamsyah on 25/11/24.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 180)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(
            gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]), center: .center, angle: .zero)
    }
    
    @State private var subtitle = "Exploring IOS Programming"
    let subtitles = [
        "SwiftUI is a powerful framework for building user interfaces",
        "Hallo, World!",
        "Hi, World!",
        "Hello, World!",
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                subtitle = subtitles.randomElement()!
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation(Animation.spring()){
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
