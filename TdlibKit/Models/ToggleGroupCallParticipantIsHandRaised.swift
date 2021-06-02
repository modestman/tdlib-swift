//
//  ToggleGroupCallParticipantIsHandRaised.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Toggles whether a group call participant hand is rased
public struct ToggleGroupCallParticipantIsHandRaised: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// Pass true if the user's hand should be raised. Only self hand can be raised. Requires groupCall.can_be_managed group call flag to lower other's hand
    public let isHandRaised: Bool

    /// Participant identifier
    public let participantId: MessageSender


    public init(
        groupCallId: Int,
        isHandRaised: Bool,
        participantId: MessageSender
    ) {
        self.groupCallId = groupCallId
        self.isHandRaised = isHandRaised
        self.participantId = participantId
    }
}

