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

    /// Pass true to disable notification for the message, doesn't work if messages are forwarded to a secret chat
    public let disableNotification: Bool

    /// Pass true if the messages are sent from the background
    public let fromBackground: Bool

    /// Identifier of the chat from which to forward messages
    public let fromChatId: Int64

    /// Identifiers of the messages to forward
    public let messageIds: [Int64]

    /// True, if media captions of message copies needs to be removed. Ignored if send_copy is false
    public let removeCaption: Bool

    /// True, if content of the messages needs to be copied without links to the original messages. Always true if the messages are forwarded to a secret chat
    public let sendCopy: Bool


    public init (
        asAlbum: Bool,
        chatId: Int64,
        disableNotification: Bool,
        fromBackground: Bool,
        fromChatId: Int64,
        messageIds: [Int64],
        removeCaption: Bool,
        sendCopy: Bool) {

        self.asAlbum = asAlbum
        self.chatId = chatId
        self.disableNotification = disableNotification
        self.fromBackground = fromBackground
        self.fromChatId = fromChatId
        self.messageIds = messageIds
        self.removeCaption = removeCaption
        self.sendCopy = sendCopy
    }
}

