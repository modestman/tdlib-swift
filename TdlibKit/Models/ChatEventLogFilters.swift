//
//  ChatEventLogFilters.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a set of filters used to obtain a chat event log
public struct ChatEventLogFilters: Codable {

    /// True, if changes in chat information should be returned
    public let infoChanges: Bool

    /// True, if invited member events should be returned
    public let memberInvites: Bool

    /// True, if members joining events should be returned
    public let memberJoins: Bool

    /// True, if members leaving events should be returned
    public let memberLeaves: Bool

    /// True, if member promotion/demotion events should be returned
    public let memberPromotions: Bool

    /// True, if member restricted/unrestricted/banned/unbanned events should be returned
    public let memberRestrictions: Bool

    /// True, if message deletions should be returned
    public let messageDeletions: Bool

    /// True, if message edits should be returned
    public let messageEdits: Bool

    /// True, if pin/unpin events should be returned
    public let messagePins: Bool

    /// True, if changes in chat settings should be returned
    public let settingChanges: Bool


    public init (
        infoChanges: Bool,
        memberInvites: Bool,
        memberJoins: Bool,
        memberLeaves: Bool,
        memberPromotions: Bool,
        memberRestrictions: Bool,
        messageDeletions: Bool,
        messageEdits: Bool,
        messagePins: Bool,
        settingChanges: Bool) {

        self.infoChanges = infoChanges
        self.memberInvites = memberInvites
        self.memberJoins = memberJoins
        self.memberLeaves = memberLeaves
        self.memberPromotions = memberPromotions
        self.memberRestrictions = memberRestrictions
        self.messageDeletions = messageDeletions
        self.messageEdits = messageEdits
        self.messagePins = messagePins
        self.settingChanges = settingChanges
    }
}

