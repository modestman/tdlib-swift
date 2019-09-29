//
//  RecoveryEmailAddress.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about the current recovery email address
public struct RecoveryEmailAddress: Codable {

    /// Recovery email address
    public let recoveryEmailAddress: String


    public init (recoveryEmailAddress: String) {
        self.recoveryEmailAddress = recoveryEmailAddress
    }
}

