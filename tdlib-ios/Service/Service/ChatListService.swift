//
//  ChatListService.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 30/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit

protocol ChatListServiceDelegate: class {
    func chatListUpdated()
}


final class ChatListService: UpdateListener {
    
    // MARK: - Private properties
    
    private let api: TdApi
    private var haveFullChatList: Bool = false
    
    
    // MARK: - Public properties
    
    private(set) var chatList: [OrderedChat] = []
    private(set) var chats: [Int64: ChatInfo] = [:]
    weak var delegate: ChatListServiceDelegate?
    
    
    // MARK: - Init
    
    init(tdApi: TdApi) {
        self.api = tdApi
    }
    
    
    // MARK: - Public methods
    
    func getChatList(limit: Int = 10) throws {
        if !haveFullChatList, limit > chatList.count {
            // have enough chats in the chat list or chat list is too small
            var offsetOrder = TdInt64.max
            var offsetChatId: Int64 = 0
            if let last = chatList.last {
                offsetOrder = TdInt64(last.order)
                offsetChatId = last.chatId
            }
            try api.getChats(limit: limit, offsetChatId: offsetChatId, offsetOrder: offsetOrder) { [weak self] result in
                guard
                    let self = self,
                    let chats = try? result.get()
                else { return }
                
                if chats.chatIds.isEmpty {
                    self.haveFullChatList = true
                }
                
                // chats had already been received through updates, let's retry request
                try? self.getChatList(limit: limit)
            }
        }
        
        // have enough chats in the chat list to answer request
        delegate?.chatListUpdated()
    }
    
    
    // MARK: - Override
    
    func onUpdate(_ update: Update) {
        switch update {
        
        case .updateNewChat(let newChat):
            var chat = ChatInfo(newChat.chat)
            let order = chat.order
            chat.order = 0
            chats[chat.id] = chat
            setChatOrder(chat, order)
        
        case .updateChatTitle(let upd):
            if var chat = chats[upd.chatId] {
                chat.title = upd.title
                chats[upd.chatId] = chat
            }
            
        case .updateChatPhoto:
            break
            
        case .updateChatLastMessage(let upd):
            if let chat = chats[upd.chatId] {
                setChatOrder(chat, upd.order.rawValue)
            }
            
        case .updateChatOrder(let upd):
            if let chat = chats[upd.chatId] {
                setChatOrder(chat, upd.order.rawValue)
            }
            
        case .updateChatIsPinned(let upd):
            if var chat = chats[upd.chatId] {
                chat.isPinned = upd.isPinned
                chats[upd.chatId] = chat
                setChatOrder(chat, upd.order.rawValue)
            }
        
        case .updateChatReadInbox(let upd):
            if var chat = chats[upd.chatId] {
                chat.lastReadInboxMessageId = upd.lastReadInboxMessageId
                chat.unreadCount = upd.unreadCount
                chats[upd.chatId] = chat
            }
            delegate?.chatListUpdated()
            
        case .updateChatReadOutbox(let upd):
            if var chat = chats[upd.chatId] {
                chat.lastReadOutboxMessageId = upd.lastReadOutboxMessageId
                chats[upd.chatId] = chat
            }
        
        case .updateChatUnreadMentionCount(let upd):
            if var chat = chats[upd.chatId] {
                chat.unreadMentionCount = upd.unreadMentionCount
                chats[upd.chatId] = chat
            }
            delegate?.chatListUpdated()
        
        case .updateMessageMentionRead:
            break
            
        case .updateChatReplyMarkup:
            break
            
        case .updateChatDraftMessage(let upd):
            if let chat = chats[upd.chatId] {
                chats[upd.chatId] = chat
                setChatOrder(chat, upd.order.rawValue)
            }
            
        case .updateChatNotificationSettings:
            break
            
        case .updateChatDefaultDisableNotification:
            break
            
        case .updateChatIsMarkedAsUnread(let upd):
            if var chat = chats[upd.chatId] {
                chat.isMarkedAsUnread = upd.isMarkedAsUnread
                chats[upd.chatId] = chat
            }
        
        case .updateChatIsSponsored(let upd):
            if let chat = chats[upd.chatId] {
                chats[upd.chatId] = chat
                setChatOrder(chat, upd.order.rawValue)
            }
            
        default:
            break
        }
    }
    
    
    // MARK: - Private methods
    
    private func setChatOrder(_ chat: ChatInfo, _ order: Int64) {
        var updChat: ChatInfo = chat
        if updChat.order != 0, let idx = chatList.firstIndex(where: { $0.chatId == chat.id }) {
            chatList.remove(at: idx)
        }
        updChat.order = order
        chats[updChat.id] = updChat
        if order != 0 {
            chatList.append(OrderedChat(chatId: chat.id, order: order))
        }
        chatList.sort()
        delegate?.chatListUpdated()
    }
    
}


struct OrderedChat: Comparable, Hashable {
    
    let chatId: Int64
    let order: Int64
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.order > rhs.order
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.chatId == rhs.chatId && lhs.order == rhs.order
    }
}
