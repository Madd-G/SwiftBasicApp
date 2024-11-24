//
//  MessagesView.swift
//  BasicApp
//
//  Created by Akhmad Nur Alamsyah on 25/11/24.
//

import SwiftUI

struct MessagesView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Hello There!", color: .green),
        .init(text: "Welcome to Swift Programming", color: .gray),
        .init(text: "Are you ready to", color: .yellow),
        .init(text: "Start exploring SwiftUI", color: .red),
        .init(text: "Boom", color: .purple),
        ]
    
    var body: some View {
        ForEach(messages) { dataItem in
            TextView(text: dataItem.text, color: dataItem.color)
        }
        //            ForEach(0..<messages.count, id: \.self) { index in
        //                let dataItem = messages[index]
        //                TextView(text: dataItem.text, color: dataItem.color)
        //            }

    }
}

#Preview {
    MessagesView()
}
