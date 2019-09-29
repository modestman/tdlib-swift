//
//  SupergroupFullInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains full information about a supergroup or channel
public struct SupergroupFullInfo: Codable {

    /// Number of privileged users in the supergroup or channel; 0 if unknown
    public let administratorCount: Int

    /// Number of users banned from chat; 0 if unknown
    public let bannedCount: Int

    /// True, if members of the chat can be retrieved
    public let canGetMembers: Bool

    /// True, if the supergroup sticker set can be changed
    public let canSetStickerSet: Bool

    /// True, if the chat can be made public
    public let canSetUsername: Bool

    /// True, if the channel statistics is available through getChatStatisticsUrl
    public let canViewStatistics: Bool

    public let description: String

    /// Invite link for this chat
    public let inviteLink: String

    /// True, if new chat members will have access to old messages. In public supergroups and both public and private channels, old messages are always available, so this option affects only private supergroups. The value of this field is only available for chat administrators
    public let isAllHistoryAvailable: Bool

    /// Number of members in the supergroup or channel; 0 if unknown
    public let memberCount: Int

    /// Number of restricted users in the supergroup; 0 if unknown
    public let restrictedCount: Int

    /// Identifier of the supergroup sticker set; 0 if none
    public let stickerSetId: String

    /// Identifier of the basic group from which supergroup was upgraded; 0 if none
    public let upgradedFromBasicGroupId: Int

    /// Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
    public let upgradedFromMaxMessageId: Int64


    public init (
        administratorCount: Int,
        bannedCount: Int,
        canGetMembers: Bool,
        canSetStickerSet: Bool,
        canSetUsername: Bool,
        canViewStatistics: Bool,
        description: String,
        inviteLink: String,
        isAllHistoryAvailable: Bool,
        memberCount: Int,
        restrictedCount: Int,
        stickerSetId: String,
        upgradedFromBasicGroupId: Int,
        upgradedFromMaxMessageId: Int64) {

        self.administratorCount = administratorCount
        self.bannedCount = bannedCount
        self.canGetMembers = canGetMembers
        self.canSetStickerSet = canSetStickerSet
        self.canSetUsername = canSetUsername
        self.canViewStatistics = canViewStatistics
        self.description = description
        self.inviteLink = inviteLink
        self.isAllHistoryAvailable = isAllHistoryAvailable
        self.memberCount = memberCount
        self.restrictedCount = restrictedCount
        self.stickerSetId = stickerSetId
        self.upgradedFromBasicGroupId = upgradedFromBasicGroupId
        self.upgradedFromMaxMessageId = upgradedFromMaxMessageId
    }
}

