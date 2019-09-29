//
//  NotificationType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains detailed information about a notification
public enum NotificationType: Codable {

    /// New message was received
    case notificationTypeNewMessage(NotificationTypeNewMessage)

    /// New secret chat was created
    case notificationTypeNewSecretChat

    /// New call was received
    case notificationTypeNewCall(NotificationTypeNewCall)

    /// New message was received through a push notification
    case notificationTypeNewPushMessage(NotificationTypeNewPushMessage)


    private enum Kind: String, Codable {
        case notificationTypeNewMessage
        case notificationTypeNewSecretChat
        case notificationTypeNewCall
        case notificationTypeNewPushMessage
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .notificationTypeNewMessage:
            let value = try NotificationTypeNewMessage(from: decoder)
            self = .notificationTypeNewMessage(value)
        case .notificationTypeNewSecretChat:
            self = .notificationTypeNewSecretChat
        case .notificationTypeNewCall:
            let value = try NotificationTypeNewCall(from: decoder)
            self = .notificationTypeNewCall(value)
        case .notificationTypeNewPushMessage:
            let value = try NotificationTypeNewPushMessage(from: decoder)
            self = .notificationTypeNewPushMessage(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .notificationTypeNewMessage(let value):
            try container.encode(Kind.notificationTypeNewMessage, forKey: .type)
            try value.encode(to: encoder)
        case .notificationTypeNewSecretChat:
            try container.encode(Kind.notificationTypeNewSecretChat, forKey: .type)
        case .notificationTypeNewCall(let value):
            try container.encode(Kind.notificationTypeNewCall, forKey: .type)
            try value.encode(to: encoder)
        case .notificationTypeNewPushMessage(let value):
            try container.encode(Kind.notificationTypeNewPushMessage, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// New message was received
public struct NotificationTypeNewMessage: Codable {

    /// The message
    public let message: Message


    public init (message: Message) {
        self.message = message
    }
}

/// New call was received
public struct NotificationTypeNewCall: Codable {

    /// Call identifier
    public let callId: Int


    public init (callId: Int) {
        self.callId = callId
    }
}

/// New message was received through a push notification
public struct NotificationTypeNewPushMessage: Codable {

    /// Push message content
    public let content: PushMessageContent

    /// The message identifier. The message will not be available in the chat history, but the ID can be used in viewMessages and as reply_to_message_id
    public let messageId: Int64

    /// Sender of the message. Corresponding user may be inaccessible
    public let senderUserId: Int


    public init (
        content: PushMessageContent,
        messageId: Int64,
        senderUserId: Int) {

        self.content = content
        self.messageId = messageId
        self.senderUserId = senderUserId
    }
}

