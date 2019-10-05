//
//  ChatEventAction.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a chat event
public enum ChatEventAction: Codable {

    /// A message was edited
    case chatEventMessageEdited(ChatEventMessageEdited)

    /// A message was deleted
    case chatEventMessageDeleted(ChatEventMessageDeleted)

    /// A poll in a message was stopped
    case chatEventPollStopped(ChatEventPollStopped)

    /// A message was pinned
    case chatEventMessagePinned(ChatEventMessagePinned)

    /// A message was unpinned
    case chatEventMessageUnpinned

    /// A new member joined the chat
    case chatEventMemberJoined

    /// A member left the chat
    case chatEventMemberLeft

    /// A new chat member was invited
    case chatEventMemberInvited(ChatEventMemberInvited)

    /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
    case chatEventMemberPromoted(ChatEventMemberPromoted)

    /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
    case chatEventMemberRestricted(ChatEventMemberRestricted)

    /// The chat title was changed
    case chatEventTitleChanged(ChatEventTitleChanged)

    /// The chat permissions was changed
    case chatEventPermissionsChanged(ChatEventPermissionsChanged)

    /// The chat description was changed
    case chatEventDescriptionChanged(ChatEventDescriptionChanged)

    /// The chat username was changed
    case chatEventUsernameChanged(ChatEventUsernameChanged)

    /// The chat photo was changed
    case chatEventPhotoChanged(ChatEventPhotoChanged)

    /// The can_invite_users permission of a supergroup chat was toggled
    case chatEventInvitesToggled(ChatEventInvitesToggled)

    /// The sign_messages setting of a channel was toggled
    case chatEventSignMessagesToggled(ChatEventSignMessagesToggled)

    /// The supergroup sticker set was changed
    case chatEventStickerSetChanged(ChatEventStickerSetChanged)

    /// The is_all_history_available setting of a supergroup was toggled
    case chatEventIsAllHistoryAvailableToggled(ChatEventIsAllHistoryAvailableToggled)


    private enum Kind: String, Codable {
        case chatEventMessageEdited
        case chatEventMessageDeleted
        case chatEventPollStopped
        case chatEventMessagePinned
        case chatEventMessageUnpinned
        case chatEventMemberJoined
        case chatEventMemberLeft
        case chatEventMemberInvited
        case chatEventMemberPromoted
        case chatEventMemberRestricted
        case chatEventTitleChanged
        case chatEventPermissionsChanged
        case chatEventDescriptionChanged
        case chatEventUsernameChanged
        case chatEventPhotoChanged
        case chatEventInvitesToggled
        case chatEventSignMessagesToggled
        case chatEventStickerSetChanged
        case chatEventIsAllHistoryAvailableToggled
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatEventMessageEdited:
            let value = try ChatEventMessageEdited(from: decoder)
            self = .chatEventMessageEdited(value)
        case .chatEventMessageDeleted:
            let value = try ChatEventMessageDeleted(from: decoder)
            self = .chatEventMessageDeleted(value)
        case .chatEventPollStopped:
            let value = try ChatEventPollStopped(from: decoder)
            self = .chatEventPollStopped(value)
        case .chatEventMessagePinned:
            let value = try ChatEventMessagePinned(from: decoder)
            self = .chatEventMessagePinned(value)
        case .chatEventMessageUnpinned:
            self = .chatEventMessageUnpinned
        case .chatEventMemberJoined:
            self = .chatEventMemberJoined
        case .chatEventMemberLeft:
            self = .chatEventMemberLeft
        case .chatEventMemberInvited:
            let value = try ChatEventMemberInvited(from: decoder)
            self = .chatEventMemberInvited(value)
        case .chatEventMemberPromoted:
            let value = try ChatEventMemberPromoted(from: decoder)
            self = .chatEventMemberPromoted(value)
        case .chatEventMemberRestricted:
            let value = try ChatEventMemberRestricted(from: decoder)
            self = .chatEventMemberRestricted(value)
        case .chatEventTitleChanged:
            let value = try ChatEventTitleChanged(from: decoder)
            self = .chatEventTitleChanged(value)
        case .chatEventPermissionsChanged:
            let value = try ChatEventPermissionsChanged(from: decoder)
            self = .chatEventPermissionsChanged(value)
        case .chatEventDescriptionChanged:
            let value = try ChatEventDescriptionChanged(from: decoder)
            self = .chatEventDescriptionChanged(value)
        case .chatEventUsernameChanged:
            let value = try ChatEventUsernameChanged(from: decoder)
            self = .chatEventUsernameChanged(value)
        case .chatEventPhotoChanged:
            let value = try ChatEventPhotoChanged(from: decoder)
            self = .chatEventPhotoChanged(value)
        case .chatEventInvitesToggled:
            let value = try ChatEventInvitesToggled(from: decoder)
            self = .chatEventInvitesToggled(value)
        case .chatEventSignMessagesToggled:
            let value = try ChatEventSignMessagesToggled(from: decoder)
            self = .chatEventSignMessagesToggled(value)
        case .chatEventStickerSetChanged:
            let value = try ChatEventStickerSetChanged(from: decoder)
            self = .chatEventStickerSetChanged(value)
        case .chatEventIsAllHistoryAvailableToggled:
            let value = try ChatEventIsAllHistoryAvailableToggled(from: decoder)
            self = .chatEventIsAllHistoryAvailableToggled(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatEventMessageEdited(let value):
            try container.encode(Kind.chatEventMessageEdited, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessageDeleted(let value):
            try container.encode(Kind.chatEventMessageDeleted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventPollStopped(let value):
            try container.encode(Kind.chatEventPollStopped, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessagePinned(let value):
            try container.encode(Kind.chatEventMessagePinned, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessageUnpinned:
            try container.encode(Kind.chatEventMessageUnpinned, forKey: .type)
        case .chatEventMemberJoined:
            try container.encode(Kind.chatEventMemberJoined, forKey: .type)
        case .chatEventMemberLeft:
            try container.encode(Kind.chatEventMemberLeft, forKey: .type)
        case .chatEventMemberInvited(let value):
            try container.encode(Kind.chatEventMemberInvited, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberPromoted(let value):
            try container.encode(Kind.chatEventMemberPromoted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberRestricted(let value):
            try container.encode(Kind.chatEventMemberRestricted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventTitleChanged(let value):
            try container.encode(Kind.chatEventTitleChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventPermissionsChanged(let value):
            try container.encode(Kind.chatEventPermissionsChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventDescriptionChanged(let value):
            try container.encode(Kind.chatEventDescriptionChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventUsernameChanged(let value):
            try container.encode(Kind.chatEventUsernameChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventPhotoChanged(let value):
            try container.encode(Kind.chatEventPhotoChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventInvitesToggled(let value):
            try container.encode(Kind.chatEventInvitesToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventSignMessagesToggled(let value):
            try container.encode(Kind.chatEventSignMessagesToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventStickerSetChanged(let value):
            try container.encode(Kind.chatEventStickerSetChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventIsAllHistoryAvailableToggled(let value):
            try container.encode(Kind.chatEventIsAllHistoryAvailableToggled, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A message was edited
public struct ChatEventMessageEdited: Codable {

    /// The message after it was edited
    public let newMessage: Message

    /// The original message before the edit
    public let oldMessage: Message


    public init (
        newMessage: Message,
        oldMessage: Message) {

        self.newMessage = newMessage
        self.oldMessage = oldMessage
    }
}

/// A message was deleted
public struct ChatEventMessageDeleted: Codable {

    /// Deleted message
    public let message: Message


    public init (message: Message) {
        self.message = message
    }
}

/// A poll in a message was stopped
public struct ChatEventPollStopped: Codable {

    /// The message with the poll
    public let message: Message


    public init (message: Message) {
        self.message = message
    }
}

/// A message was pinned
public struct ChatEventMessagePinned: Codable {

    /// Pinned message
    public let message: Message


    public init (message: Message) {
        self.message = message
    }
}

/// A new chat member was invited
public struct ChatEventMemberInvited: Codable {

    /// New member status
    public let status: ChatMemberStatus

    /// New member user identifier
    public let userId: Int


    public init (
        status: ChatMemberStatus,
        userId: Int) {

        self.status = status
        self.userId = userId
    }
}

/// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
public struct ChatEventMemberPromoted: Codable {

    /// New status of the chat member
    public let newStatus: ChatMemberStatus

    /// Previous status of the chat member
    public let oldStatus: ChatMemberStatus

    /// Chat member user identifier
    public let userId: Int


    public init (
        newStatus: ChatMemberStatus,
        oldStatus: ChatMemberStatus,
        userId: Int) {

        self.newStatus = newStatus
        self.oldStatus = oldStatus
        self.userId = userId
    }
}

/// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
public struct ChatEventMemberRestricted: Codable {

    /// New status of the chat member
    public let newStatus: ChatMemberStatus

    /// Previous status of the chat member
    public let oldStatus: ChatMemberStatus

    /// Chat member user identifier
    public let userId: Int


    public init (
        newStatus: ChatMemberStatus,
        oldStatus: ChatMemberStatus,
        userId: Int) {

        self.newStatus = newStatus
        self.oldStatus = oldStatus
        self.userId = userId
    }
}

/// The chat title was changed
public struct ChatEventTitleChanged: Codable {

    /// New chat title
    public let newTitle: String

    /// Previous chat title
    public let oldTitle: String


    public init (
        newTitle: String,
        oldTitle: String) {

        self.newTitle = newTitle
        self.oldTitle = oldTitle
    }
}

/// The chat permissions was changed
public struct ChatEventPermissionsChanged: Codable {

    /// New chat permissions
    public let newPermissions: ChatPermissions

    /// Previous chat permissions
    public let oldPermissions: ChatPermissions


    public init (
        newPermissions: ChatPermissions,
        oldPermissions: ChatPermissions) {

        self.newPermissions = newPermissions
        self.oldPermissions = oldPermissions
    }
}

/// The chat description was changed
public struct ChatEventDescriptionChanged: Codable {

    /// New chat description
    public let newDescription: String

    /// Previous chat description
    public let oldDescription: String


    public init (
        newDescription: String,
        oldDescription: String) {

        self.newDescription = newDescription
        self.oldDescription = oldDescription
    }
}

/// The chat username was changed
public struct ChatEventUsernameChanged: Codable {

    /// New chat username
    public let newUsername: String

    /// Previous chat username
    public let oldUsername: String


    public init (
        newUsername: String,
        oldUsername: String) {

        self.newUsername = newUsername
        self.oldUsername = oldUsername
    }
}

/// The chat photo was changed
public struct ChatEventPhotoChanged: Codable {

    /// New chat photo value; may be null
    public let newPhoto: Photo?

    /// Previous chat photo value; may be null
    public let oldPhoto: Photo?


    public init (
        newPhoto: Photo?,
        oldPhoto: Photo?) {

        self.newPhoto = newPhoto
        self.oldPhoto = oldPhoto
    }
}

/// The can_invite_users permission of a supergroup chat was toggled
public struct ChatEventInvitesToggled: Codable {

    /// New value of can_invite_users permission
    public let canInviteUsers: Bool


    public init (canInviteUsers: Bool) {
        self.canInviteUsers = canInviteUsers
    }
}

/// The sign_messages setting of a channel was toggled
public struct ChatEventSignMessagesToggled: Codable {

    /// New value of sign_messages
    public let signMessages: Bool


    public init (signMessages: Bool) {
        self.signMessages = signMessages
    }
}

/// The supergroup sticker set was changed
public struct ChatEventStickerSetChanged: Codable {

    /// New identifier of the chat sticker set; 0 if none
    public let newStickerSetId: TdInt64

    /// Previous identifier of the chat sticker set; 0 if none
    public let oldStickerSetId: TdInt64


    public init (
        newStickerSetId: TdInt64,
        oldStickerSetId: TdInt64) {

        self.newStickerSetId = newStickerSetId
        self.oldStickerSetId = oldStickerSetId
    }
}

/// The is_all_history_available setting of a supergroup was toggled
public struct ChatEventIsAllHistoryAvailableToggled: Codable {

    /// New value of is_all_history_available
    public let isAllHistoryAvailable: Bool


    public init (isAllHistoryAvailable: Bool) {
        self.isAllHistoryAvailable = isAllHistoryAvailable
    }
}

