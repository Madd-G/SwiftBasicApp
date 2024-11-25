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
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Exploring IOS Programming")
                    .font(.headline)
                    .fontWeight(.thin)
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
