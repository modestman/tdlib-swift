//
//  ChatInviteLinkInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a chat invite link
public struct ChatInviteLinkInfo: Codable {

    /// Chat identifier of the invite link; 0 if the user is not a member of this chat
    public let chatId: Int64

    /// True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
    public let isPublic: Bool

    /// Number of members in the chat
    public let memberCount: Int

    /// User identifiers of some chat members that may be known to the current user
    public let memberUserIds: [Int]

    /// Chat photo; may be null
    public let photo: ChatPhoto?

    /// Title of the chat
    public let title: String

    /// Contains information about the type of the chat
    public let type: ChatType


    public init (
        chatId: Int64,
        isPublic: Bool,
        memberCount: Int,
        memberUserIds: [Int],
        photo: ChatPhoto?,
        title: String,
        type: ChatType) {

        self.chatId = chatId
        self.isPublic = isPublic
        self.memberCount = memberCount
        self.memberUserIds = memberUserIds
        self.photo = photo
        self.title = title
        self.type = type
    }
}

