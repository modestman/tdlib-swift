//
//  SetChatDraftMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the draft message in a chat
public struct SetChatDraftMessage: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New draft message; may be null
    public let draftMessage: DraftMessage?


    public init (
        chatId: Int64,
        draftMessage: DraftMessage?) {

        self.chatId = chatId
        self.draftMessage = draftMessage
    }
}

