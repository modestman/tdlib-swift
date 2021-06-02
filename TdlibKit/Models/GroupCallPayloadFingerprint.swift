//
//  GroupCallPayloadFingerprint.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a payload fingerprint for interaction with tgcalls
public struct GroupCallPayloadFingerprint: Codable {

    /// Value of the field fingerprint
    public let fingerprint: String

    /// Value of the field hash
    public let hash: String

    /// Value of the field setup
    public let setup: String


    public init(
        fingerprint: String,
        hash: String,
        setup: String
    ) {
        self.fingerprint = fingerprint
        self.hash = hash
        self.setup = setup
    }
}

