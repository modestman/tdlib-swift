//
//  GroupCallRecentSpeaker.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a recently speaking participant in a group call
public struct GroupCallRecentSpeaker: Codable {

    /// True, is the user has spoken recently
    public let isSpeaking: Bool

    /// Group call participant identifier
    public let participantId: MessageSender


    public init(
        isSpeaking: Bool,
        participantId: MessageSender
    ) {
        self.isSpeaking = isSpeaking
        self.participantId = participantId
    }
}

