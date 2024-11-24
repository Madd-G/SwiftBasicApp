//
//  ContentView.swift
//  BasicApp
//
//  Created by Akhmad Nur Alamsyah on 24/11/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
