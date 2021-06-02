//
//  ToggleGroupCallParticipantIsMuted.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themself
public struct ToggleGroupCallParticipantIsMuted: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// Pass true if the user must be muted and false otherwise
    public let isMuted: Bool

    /// Participant identifier
    public let participantId: MessageSender


    public init(
        groupCallId: Int,
        isMuted: Bool,
        participantId: MessageSender
    ) {
        self.groupCallId = groupCallId
        self.isMuted = isMuted
        self.participantId = participantId
    }
}

