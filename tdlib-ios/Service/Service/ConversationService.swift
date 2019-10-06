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
    weak var userService: UsersService?


    // MARK: - Init

    init(tdApi: TdApi, userService: UsersService?, chatId: Int64) {
        self.api = tdApi
        self.userService = userService
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
            delegate?.messagesUpdated()
            
        case .updateMessageContent(let upd):
            guard upd.chatId == chatId else { return }
            if let idx = messages.firstIndex(where: { $0.id == upd.messageId }) {
                let msg = messages[idx]
                msg.updateContent(upd.newContent)
            }
            delegate?.messagesUpdated()
            
        case .updateMessageEdited:
            break
            
        case .updateDeleteMessages(let upd):
            guard upd.chatId == chatId else { return }
            messages.removeAll(where: { upd.messageIds.contains($0.id) })
            delegate?.messagesUpdated()
            
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
    
    func sendMessage(text: String) {
        let messageText = InputMessageText(
            clearDraft: true,
            disableWebPagePreview: true,
            text: FormattedText(entities: [], text: text))
        
        try? api.sendMessage(
            chatId: chatId,
            disableNotification: false,
            fromBackground: false,
            inputMessageContent: .inputMessageText(messageText),
            replyMarkup: .replyMarkupRemoveKeyboard(ReplyMarkupRemoveKeyboard(isPersonal: true)),
            replyToMessageId: 0,
            completion: { [weak self] result in
                guard let self = self else { return }
                if case .failure(let error) = result {
                    self.delegate?.onError(error)
                    return
                }
                if let message = try? result.get() {
                    self.addMessages([TextMessage(message)])
                }
            }
        )
    }
    
    
    // MARK: - Private methods
    
    private func getUser(_ message: TextMessage) {
        guard
            let userService = userService,
            message.senderUserId != 0
        else { return }
        
        if let user = userService.users[message.senderUserId] {
            message.user = user
        } else {
            userService.obtainUser(message.senderUserId) { [weak self] user in
                guard let self = self else { return }
                message.user = user
                self.delegate?.messagesUpdated()
            }
        }
    }
    
    private func addMessages(_ messages: [TextMessage]) {
        self.messages.append(contentsOf: messages)
        messages.forEach { msg in
            self.getUser(msg)
        }
        self.delegate?.messagesUpdated()
    }
}
