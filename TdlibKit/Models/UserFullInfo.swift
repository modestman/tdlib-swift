//
//  UserFullInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains full information about a user (except the full list of profile photos)
public struct UserFullInfo: Codable {

    /// A short user bio
    public let bio: String

    /// If the user is a bot, information about the bot; may be null
    public let botInfo: BotInfo?

    /// True, if the user can be called
    public let canBeCalled: Bool

    /// Number of group chats where both the other user and the current user are a member; 0 for the current user
    public let groupInCommonCount: Int

    /// True, if the user can't be called due to their privacy settings
    public let hasPrivateCalls: Bool

    /// True, if the user is blacklisted by the current user
    public let isBlocked: Bool

    /// True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
    public let needPhoneNumberPrivacyException: Bool

    /// For bots, the text that is included with the link when users share the bot
    public let shareText: String


    public init (
        bio: String,
        botInfo: BotInfo?,
        canBeCalled: Bool,
        groupInCommonCount: Int,
        hasPrivateCalls: Bool,
        isBlocked: Bool,
        needPhoneNumberPrivacyException: Bool,
        shareText: String) {

        self.bio = bio
        self.botInfo = botInfo
        self.canBeCalled = canBeCalled
        self.groupInCommonCount = groupInCommonCount
        self.hasPrivateCalls = hasPrivateCalls
        self.isBlocked = isBlocked
        self.needPhoneNumberPrivacyException = needPhoneNumberPrivacyException
        self.shareText = shareText
    }
}

