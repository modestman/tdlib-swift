//
//  JoinGroupCall.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Joins an active group call
public struct JoinGroupCall: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// If non-empty, invite hash to be used to join the group call without being muted by administrators
    public let inviteHash: String

    /// True, if the user's microphone is muted
    public let isMuted: Bool

    /// Identifier of a group call participant, which will be used to join the call; voice chats only
    public let participantId: MessageSender

    /// Group join payload; received from tgcalls
    public let payload: GroupCallPayload

    /// Caller synchronization source identifier; received from tgcalls
    public let source: Int


    public init(
        groupCallId: Int,
        inviteHash: String,
        isMuted: Bool,
        participantId: MessageSender,
        payload: GroupCallPayload,
        source: Int
    ) {
        self.groupCallId = groupCallId
        self.inviteHash = inviteHash
        self.isMuted = isMuted
        self.participantId = participantId
        self.payload = payload
        self.source = source
    }
}

