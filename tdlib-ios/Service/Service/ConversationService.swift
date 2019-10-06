//
//  ConversationService.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit


protocol ConversationServiceDelegate: class {
    func messagesUpdated()
    func onError(_ error: Swift.Error)
}


final class ConversationService: UpdateListener {

    // MARK: - Private properties

    private let api: TdApi
    private let chatId: Int64

    
    // MARK: - Public properties
    private(set) var messages: [TextMessage] = []
    weak var delegate: ConversationServiceDelegate?


    // MARK: - Init

    init(tdApi: TdApi, chatId: Int64) {
        self.api = tdApi
        self.chatId = chatId
    }
    
    
    // MARK: - Public methods

    func onUpdate(_ update: Update) {
        switch update {
        case .updateNewMessage(let newMsg):
            guard newMsg.message.chatId == chatId else { return }
            let msg = TextMessage(newMsg.message)
            messages.insert(msg, at: 0)
            getUser(msg)
            
        case .updateMessageContent(let upd):
            guard upd.chatId == chatId else { return }
            if let idx = messages.firstIndex(where: { $0.id == upd.messageId }) {
                var msg = messages[idx]
                msg.updateContent(upd.newContent)
                messages.remove(at: idx)
                messages.insert(msg, at: idx)
            }
            delegate?.messagesUpdated()
            
        case .updateMessageEdited:
            break
            
        default:
            break
        }
    }
    
    func getMessages(fromMessageId: Int64 = 0, limit: Int = 50, offset: Int = 0) {
        try? api.getChatHistory(
            chatId: chatId,
            fromMessageId: fromMessageId,
            limit: limit,
            offset: offset,
            onlyLocal: false,
            completion: { [weak self] result in
                guard let self = self else { return }
                if case .failure(let error) = result {
                    self.delegate?.onError(error)
                    return
                }
                if let messages = try? result.get().messages {
                    let textMsgs = messages.map { TextMessage($0) }
                    self.addMessages(textMsgs)
                    if !messages.isEmpty && messages.count < limit  {
                        self.getMessages(fromMessageId: messages.first!.id)
                    }
                }
            }
        )
    }
    
    private func getUser(_ message: TextMessage) {
        guard message.senderUserId != 0 else { return }
        try? api.getUser(userId: message.senderUserId, completion: { [weak self] result in
            guard
                let self = self,
                let user = try? result.get()
            else { return }
            
            if let idx = self.messages.firstIndex(where: { $0.id == message.id }) {
                var msg = self.messages[idx]
                msg.user = UserInfo(user)
                self.messages.remove(at: idx)
                self.messages.insert(msg, at: idx)
                self.delegate?.messagesUpdated()
            }
        })
    }
    
    private func addMessages(_ messages: [TextMessage]) {
        self.messages.append(contentsOf: messages)
        messages.forEach { msg in
            self.getUser(msg)
        }
        self.delegate?.messagesUpdated()
    }
}
