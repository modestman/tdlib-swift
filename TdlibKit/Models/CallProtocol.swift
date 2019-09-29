//
//  CallProtocol.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Specifies the supported call protocols
public struct CallProtocol: Codable {

    /// Maximum supported API layer; use 65
    public let maxLayer: Int

    /// Minimum supported API layer; use 65
    public let minLayer: Int

    /// True, if UDP peer-to-peer connections are supported
    public let udpP2p: Bool

    /// True, if connection through UDP reflectors is supported
    public let udpReflector: Bool


    public init (
        maxLayer: Int,
        minLayer: Int,
        udpP2p: Bool,
        udpReflector: Bool) {

        self.maxLayer = maxLayer
        self.minLayer = minLayer
        self.udpP2p = udpP2p
        self.udpReflector = udpReflector
    }
}

