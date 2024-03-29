//
//  GetChatJoinRequests.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns pending join requests in a chat
public struct GetChatJoinRequests: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Invite link for which to return join requests. If empty, all join requests will be returned. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
    public let inviteLink: String?

    /// The maximum number of chat join requests to return
    public let limit: Int?

    /// A chat join request from which to return next requests; pass null to get results from the beginning
    public let offsetRequest: ChatJoinRequest?

    /// A query to search for in the first names, last names and usernames of the users to return
    public let query: String?


    public init(
        chatId: Int64?,
        inviteLink: String?,
        limit: Int?,
        offsetRequest: ChatJoinRequest?,
        query: String?
    ) {
        self.chatId = chatId
        self.inviteLink = inviteLink
        self.limit = limit
        self.offsetRequest = offsetRequest
        self.query = query
    }
}

