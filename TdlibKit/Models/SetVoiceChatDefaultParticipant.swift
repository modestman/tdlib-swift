//
//  SetVoiceChatDefaultParticipant.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes default participant identifier, which can be used to join voice chats in a chat
public struct SetVoiceChatDefaultParticipant: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Default group call participant identifier to join the voice chats
    public let defaultParticipantId: MessageSender?


    public init(
        chatId: Int64?,
        defaultParticipantId: MessageSender?
    ) {
        self.chatId = chatId
        self.defaultParticipantId = defaultParticipantId
    }
}

