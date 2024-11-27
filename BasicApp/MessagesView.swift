//
//  MessagesView.swift
//  BasicApp
//
//  Created by Akhmad Nur Alamsyah on 25/11/24.
//

import SwiftUI

struct MessagesView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Hello There!", color: .myGreen),
        .init(text: "Welcome to Swift Programming", color: .myGray),
        .init(text: "Are you ready to", color: .myYellow),
        .init(text: "Start exploring SwiftUI", color: .myRed),
        .init(text: "Boom", color: .myPurple),
        ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
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
