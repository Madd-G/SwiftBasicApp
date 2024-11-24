//
//  TitleView.swift
//  BasicApp
//
//  Created by Akhmad Nur Alamsyah on 25/11/24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Exploring IOS Programming")
                .font(.headline)
                .fontWeight(.thin)
        }
    }
}

#Preview {
    TitleView()
}
