//
//  Responses.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/29/24.
//

import SwiftUI

struct Responses: View {
    let chatLog: [Message]
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(chatLog.indices, id: \.self) { i in
                    let message = chatLog[i]
                    Text(message.text)
                        .foregroundColor(.black)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 20)
                        .background(message.isUser ? Color.gray.opacity(0.1) : Color.blue.opacity(0.1))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .padding(.horizontal, 18)
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity, alignment: message.isUser ? .trailing : .leading)
                }
            }
            .padding(.vertical, 10)
        }
        .scrollIndicators(.hidden)
        .defaultScrollAnchor(.bottom)
    }
}
