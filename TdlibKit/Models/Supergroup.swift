//
//  Supergroup.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers
public struct Supergroup: Codable {

    /// Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
    public let date: Int

    /// Supergroup or channel identifier
    public let id: Int

    /// True, if the supergroup is a channel
    public let isChannel: Bool

    /// True, if many users reported this supergroup as a scam
    public let isScam: Bool

    /// True, if the supergroup or channel is verified
    public let isVerified: Bool

    /// Member count; 0 if unknown. Currently it is guaranteed to be known only if the supergroup or channel was found through SearchPublicChats
    public let memberCount: Int

    /// If non-empty, contains the reason why access to this supergroup or channel must be restricted. Format of the string is "{type}: {description}".//-{type} Contains the type of the restriction and at least one of the suffixes "-all", "-ios", "-android", or "-wp", which describe the platforms on which access should be restricted. (For example, "terms-ios-android". {description} contains a human-readable description of the restriction, which can be shown to the user)
    public let restrictionReason: String

    /// True, if messages sent to the channel should contain information about the sender. This field is only applicable to channels
    public let signMessages: Bool

    /// Status of the current user in the supergroup or channel
    public let status: ChatMemberStatus

    /// Username of the supergroup or channel; empty for private supergroups or channels
    public let username: String


    public init (
        date: Int,
        id: Int,
        isChannel: Bool,
        isScam: Bool,
        isVerified: Bool,
        memberCount: Int,
        restrictionReason: String,
        signMessages: Bool,
        status: ChatMemberStatus,
        username: String) {

        self.date = date
        self.id = id
        self.isChannel = isChannel
        self.isScam = isScam
        self.isVerified = isVerified
        self.memberCount = memberCount
        self.restrictionReason = restrictionReason
        self.signMessages = signMessages
        self.status = status
        self.username = username
    }
}

