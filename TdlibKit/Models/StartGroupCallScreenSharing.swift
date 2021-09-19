//
//  StartGroupCallScreenSharing.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Starts screen sharing in a joined group call. Returns join response payload for tgcalls
public struct StartGroupCallScreenSharing: Codable {

    /// Screen sharing audio channel synchronization source identifier; received from tgcalls
    public let audioSourceId: Int?

    /// Group call identifier
    public let groupCallId: Int?

    /// Group call join payload; received from tgcalls
    public let payload: String?


    public init(
        audioSourceId: Int?,
        groupCallId: Int?,
        payload: String?
    ) {
        self.audioSourceId = audioSourceId
        self.groupCallId = groupCallId
        self.payload = payload
    }
}

