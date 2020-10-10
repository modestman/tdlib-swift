//
//  SendCallSignalingData.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends call signaling data
public struct SendCallSignalingData: Codable {

    /// Call identifier
    public let callId: Int

    /// The data
    public let data: Data


    public init (
        callId: Int,
        data: Data) {

        self.callId = callId
        self.data = data
    }
}

