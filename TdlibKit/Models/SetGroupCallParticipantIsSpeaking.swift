//
//  SetGroupCallParticipantIsSpeaking.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Informs TDLib that a participant of an active group call speaking state has changed
public struct SetGroupCallParticipantIsSpeaking: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// True, if the user is speaking
    public let isSpeaking: Bool

    /// Group call participant's synchronization source identifier, or 0 for the current user
    public let source: Int


    public init(
        groupCallId: Int,
        isSpeaking: Bool,
        source: Int
    ) {
        self.groupCallId = groupCallId
        self.isSpeaking = isSpeaking
        self.source = source
    }
}

