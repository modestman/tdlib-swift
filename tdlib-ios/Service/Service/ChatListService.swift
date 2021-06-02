//
//  ChatListService.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 30/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit

protocol ChatListServiceDelegate: AnyObject {
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
                offsetOrder = last.position.order
                offsetChatId = last.chatId
            }
            try api.getChats(chatList: .chatListMain, limit: limit, offsetChatId: offsetChatId, offsetOrder: offsetOrder) { [weak self] result in
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
            let chat = ChatInfo(newChat.chat)
            chats[chat.id] = chat
            setChatPositions(chat, newChat.chat.positions)
        
        case .updateChatTitle(let upd):
            if var chat = chats[upd.chatId] {
                chat.title = upd.title
                chats[upd.chatId] = chat
            }
            
        case .updateChatPhoto:
            break
            
        case .updateChatLastMessage(let upd):
            if var chat = chats[upd.chatId] {
                if let msg = upd.lastMessage {
                    chat.lastMessage = TextMessage(msg)
                } else {
                    chat.lastMessage = nil
                }
                chats[upd.chatId] = chat
                setChatPositions(chat, upd.positions)
            }
            
        case .updateChatPosition(let upd):
            if let chat = chats[upd.chatId] {
                setChatPositions(chat, [upd.position])
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
                setChatPositions(chat, upd.positions)
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
            
        default:
            break
        }
    }
    
    
    // MARK: - Private methods
    
    private func setChatPositions(_ chat: ChatInfo, _ positions: [ChatPosition]) {
        var updChat: ChatInfo = chat
        for position in positions {
            if case .chatListMain = position.list, let idx = chatList.firstIndex(where: { $0.chatId == chat.id }) {
                chatList.remove(at: idx)
            }
        }
        updChat.positions = positions
        chats[updChat.id] = updChat
        for position in positions {
            if case .chatListMain = position.list {
                 chatList.append(OrderedChat(chatId: chat.id, position: position))
            }
        }
        chatList.sort()
        delegate?.chatListUpdated()
    }
    
}


struct OrderedChat: Comparable {
    
    let chatId: Int64
    let position: ChatPosition
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.position.order > rhs.position.order
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.chatId == rhs.chatId && lhs.position.order == rhs.position.order
    }
}
