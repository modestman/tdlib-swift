//
//  SetVideoChatDefaultParticipant.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes default participant identifier, which can be used to join video chats in a chat
public struct SetVideoChatDefaultParticipant: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Default group call participant identifier to join the video chats
    public let defaultParticipantId: MessageSender?


    public init(
        chatId: Int64?,
        defaultParticipantId: MessageSender?
    ) {
        self.chatId = chatId
        self.defaultParticipantId = defaultParticipantId
    }
}

