//
//  TextMessage.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit

class TextMessage {

    let id: Int64
    let chatId: Int64
    let date: Foundation.Date
    let senderUserId: Int
    let isOutgoing: Bool
    let isChannelPost: Bool
    private(set) var text: String
    var user: UserInfo?
    
    init(
        id: Int64,
        chatId: Int64,
        date: Foundation.Date,
        senderUserId: Int,
        isOutgoing: Bool,
        isChannelPost: Bool,
        text: String,
        user: UserInfo? = nil) {
        
        self.id = id
        self.chatId = chatId
        self.date = date
        self.senderUserId = senderUserId
        self.isOutgoing = isOutgoing
        self.isChannelPost = isChannelPost
        self.text = text
        self.user = user
    }
    
}


extension TextMessage {
    
    convenience init(_ message: Message) {
        self.init(
            id: message.id,
            chatId: message.chatId,
            date: Foundation.Date(timeIntervalSince1970: TimeInterval(message.date)),
            senderUserId: message.senderUserId,
            isOutgoing: message.isOutgoing,
            isChannelPost: message.isChannelPost,
            text: TextMessage.makeText(message.content) ?? ""
        )
    }
    
    func updateContent(_ content: MessageContent) {
        text = TextMessage.makeText(content) ?? ""
    }

    private static func makeText(_ content: MessageContent) -> String? {
        switch content {
        case .messageText(let text):
            return text.text.text
            
        case .messageAnimation:
            return "<Animation>"
            
        case .messageAudio:
            return "<Audio>"
            
        case .messageDocument:
            return "<Document>"
            
        case .messagePhoto:
            return "<Photo>"
            
        case .messageSticker(let sticker):
            return sticker.sticker.emoji
            
        case .messageVideo:
            return "<Video>"
        
        default:
            return nil
        }
    }
}
