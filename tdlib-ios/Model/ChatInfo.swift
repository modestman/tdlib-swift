//
//  ChatInfo.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit

struct ChatInfo {
    
    let id: Int64
    var order: Int64
    var title: String
    var isMarkedAsUnread: Bool
    var isPinned: Bool
    var unreadCount: Int
    var unreadMentionCount: Int
    var lastReadInboxMessageId: Int64
    var lastReadOutboxMessageId: Int64
    var lastMessage: TextMessage?
    
    
    init(
        id: Int64,
        order: Int64,
        title: String,
        isMarkedAsUnread: Bool = false,
        isPinned: Bool = false,
        unreadCount: Int = 0,
        unreadMentionCount: Int = 0,
        lastReadInboxMessageId: Int64 = 0,
        lastReadOutboxMessageId: Int64 = 0,
        lastMessage: TextMessage? = nil) {
        
        self.id = id
        self.order = order
        self.title = title
        self.isMarkedAsUnread = isMarkedAsUnread
        self.isPinned = isPinned
        self.unreadCount = unreadCount
        self.unreadMentionCount = unreadMentionCount
        self.lastReadInboxMessageId = lastReadInboxMessageId
        self.lastReadOutboxMessageId = lastReadOutboxMessageId
    }
}


extension ChatInfo {
    
    init(_ chat: Chat) {
        id = chat.id
        order = chat.order.rawValue
        title = chat.title
        isMarkedAsUnread = chat.isMarkedAsUnread
        isPinned = chat.isPinned
        unreadCount = chat.unreadCount
        unreadMentionCount = chat.unreadMentionCount
        lastReadInboxMessageId = chat.lastReadInboxMessageId
        lastReadOutboxMessageId = chat.lastReadOutboxMessageId
        if let message = chat.lastMessage {
            lastMessage = TextMessage(message)
        }
    }
}
