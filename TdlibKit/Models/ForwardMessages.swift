//
//  ForwardMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
public struct ForwardMessages: Codable {

    /// True, if the messages should be grouped into an album after forwarding. For this to work, no more than 10 messages may be forwarded, and all of them must be photo or video messages
    public let asAlbum: Bool

    /// Identifier of the chat to which to forward messages
    public let chatId: Int64

    /// Identifier of the chat from which to forward messages
    public let fromChatId: Int64

    /// Identifiers of the messages to forward
    public let messageIds: [Int64]

    /// Options to be used to send the messages
    public let options: SendMessageOptions

    /// True, if media captions of message copies needs to be removed. Ignored if send_copy is false
    public let removeCaption: Bool

    /// True, if content of the messages needs to be copied without links to the original messages. Always true if the messages are forwarded to a secret chat
    public let sendCopy: Bool


    public init (
        asAlbum: Bool,
        chatId: Int64,
        fromChatId: Int64,
        messageIds: [Int64],
        options: SendMessageOptions,
        removeCaption: Bool,
        sendCopy: Bool) {

        self.asAlbum = asAlbum
        self.chatId = chatId
        self.fromChatId = fromChatId
        self.messageIds = messageIds
        self.options = options
        self.removeCaption = removeCaption
        self.sendCopy = sendCopy
    }
}

