//
//  AcceptCall.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Accepts an incoming call
public struct AcceptCall: Codable {

    /// Call identifier
    public let callId: Int

    /// Description of the call protocols supported by the application
    public let `protocol`: CallProtocol


    public init (
        callId: Int,
        `protocol`: CallProtocol) {

        self.callId = callId
        self.`protocol` = `protocol`
    }
}

