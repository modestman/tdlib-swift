//
//  Message.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a message
public struct Message: Codable {

    /// For channel posts, optional author signature
    public let authorSignature: String

    /// True, if the message can be deleted for all users
    public let canBeDeletedForAllUsers: Bool

    /// True, if the message can be deleted only for the current user while other users will continue to see it
    public let canBeDeletedOnlyForSelf: Bool

    /// True, if the message can be edited. For live location and poll messages this fields shows, whether editMessageLiveLocation or stopPoll can be used with this message by the client
    public let canBeEdited: Bool

    /// True, if the message can be forwarded
    public let canBeForwarded: Bool

    /// Chat identifier
    public let chatId: Int64

    /// True, if the message contains an unread mention for the current user
    public let containsUnreadMention: Bool

    /// Content of the message
    public let content: MessageContent

    /// Point in time (Unix timestamp) when the message was sent
    public let date: Int

    /// Point in time (Unix timestamp) when the message was last edited
    public let editDate: Int

    /// Information about the initial message sender; may be null
    public let forwardInfo: MessageForwardInfo?

    /// Message identifier, unique for the chat to which the message belongs
    public let id: Int64

    /// True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
    public let isChannelPost: Bool

    /// True, if the message is outgoing
    public let isOutgoing: Bool

    /// Unique identifier of an album this message belongs to. Only photos and videos can be grouped together in albums
    public let mediaAlbumId: String

    /// Reply markup for the message; may be null
    public let replyMarkup: ReplyMarkup?

    /// If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message
    public let replyToMessageId: Int64

    /// Identifier of the user who sent the message; 0 if unknown. Currently, it is unknown for channel posts and for channel posts automatically forwarded to discussion group
    public let senderUserId: Int

    /// Information about the sending state of the message; may be null
    public let sendingState: MessageSendingState?

    /// For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires
    public let ttl: Int

    /// Time left before the message expires, in seconds
    public let ttlExpiresIn: Double

    /// If non-zero, the user identifier of the bot through which this message was sent
    public let viaBotUserId: Int

    /// Number of times this message was viewed
    public let views: Int


    public init (
        authorSignature: String,
        canBeDeletedForAllUsers: Bool,
        canBeDeletedOnlyForSelf: Bool,
        canBeEdited: Bool,
        canBeForwarded: Bool,
        chatId: Int64,
        containsUnreadMention: Bool,
        content: MessageContent,
        date: Int,
        editDate: Int,
        forwardInfo: MessageForwardInfo?,
        id: Int64,
        isChannelPost: Bool,
        isOutgoing: Bool,
        mediaAlbumId: String,
        replyMarkup: ReplyMarkup?,
        replyToMessageId: Int64,
        senderUserId: Int,
        sendingState: MessageSendingState?,
        ttl: Int,
        ttlExpiresIn: Double,
        viaBotUserId: Int,
        views: Int) {

        self.authorSignature = authorSignature
        self.canBeDeletedForAllUsers = canBeDeletedForAllUsers
        self.canBeDeletedOnlyForSelf = canBeDeletedOnlyForSelf
        self.canBeEdited = canBeEdited
        self.canBeForwarded = canBeForwarded
        self.chatId = chatId
        self.containsUnreadMention = containsUnreadMention
        self.content = content
        self.date = date
        self.editDate = editDate
        self.forwardInfo = forwardInfo
        self.id = id
        self.isChannelPost = isChannelPost
        self.isOutgoing = isOutgoing
        self.mediaAlbumId = mediaAlbumId
        self.replyMarkup = replyMarkup
        self.replyToMessageId = replyToMessageId
        self.senderUserId = senderUserId
        self.sendingState = sendingState
        self.ttl = ttl
        self.ttlExpiresIn = ttlExpiresIn
        self.viaBotUserId = viaBotUserId
        self.views = views
    }
}

