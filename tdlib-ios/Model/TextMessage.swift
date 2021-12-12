//
//  TextMessage.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit

struct TextMessage {
 
    let id: Int64
    let chatId: Int64
    let date: Foundation.Date
    let senderUserId: Int64
    let isChannelPost: Bool
    private(set) var text: String?
    var user: UserInfo?
    
}


extension TextMessage {
    
    init(_ message: Message) {
        id = message.id
        chatId = message.chatId
        date = Foundation.Date(timeIntervalSince1970: TimeInterval(message.date))
        switch message.senderId {
        case .messageSenderUser(let user):
            senderUserId = user.userId
        default:
            senderUserId = 0
        }
        isChannelPost = message.isChannelPost
        text = TextMessage.makeText(message.content)
    }
    
    mutating func updateContent(_ content: MessageContent) {
        text = TextMessage.makeText(content)
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
            
        case .messagePhoto(let photo):
            return "<Photo>\n\(photo.caption.text)"
            
        case .messageSticker(let sticker):
            return sticker.sticker.emoji
            
        case .messageVideo(let video):
            return "<Video>\n\(video.caption.text)"
            
        case .messagePoll:
            return "<Poll>"
            
        case .messageCall:
            return "<Call>"
        
        default:
            return nil
        }
    }
}
