//
//  DiscardCall.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Discards a call
public struct DiscardCall: Codable {

    /// Call identifier
    public let callId: Int

    /// Identifier of the connection used during the call
    public let connectionId: String

    /// The call duration, in seconds
    public let duration: Int

    /// True, if the user was disconnected
    public let isDisconnected: Bool


    public init (
        callId: Int,
        connectionId: String,
        duration: Int,
        isDisconnected: Bool) {

        self.callId = callId
        self.connectionId = connectionId
        self.duration = duration
        self.isDisconnected = isDisconnected
    }
}

