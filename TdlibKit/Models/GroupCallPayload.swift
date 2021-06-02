//
//  GroupCallPayload.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a payload for interaction with tgcalls
public struct GroupCallPayload: Codable {

    /// The list of fingerprints
    public let fingerprints: [GroupCallPayloadFingerprint]

    /// Value of the field pwd
    public let pwd: String

    /// Value of the field ufrag
    public let ufrag: String


    public init(
        fingerprints: [GroupCallPayloadFingerprint],
        pwd: String,
        ufrag: String
    ) {
        self.fingerprints = fingerprints
        self.pwd = pwd
        self.ufrag = ufrag
    }
}

