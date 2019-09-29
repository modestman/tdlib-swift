//
//  SendCallDebugInformation.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends debug information for a call
public struct SendCallDebugInformation: Codable {

    /// Call identifier
    public let callId: Int

    /// Debug information in application-specific format
    public let debugInformation: String


    public init (
        callId: Int,
        debugInformation: String) {

        self.callId = callId
        self.debugInformation = debugInformation
    }
}

