//
//  TemporaryPasswordState.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about the availability of a temporary password, which can be used for payments
public struct TemporaryPasswordState: Codable {

    /// True, if a temporary password is available
    public let hasPassword: Bool

    /// Time left before the temporary password expires, in seconds
    public let validFor: Int


    public init(
        hasPassword: Bool,
        validFor: Int
    ) {
        self.hasPassword = hasPassword
        self.validFor = validFor
    }
}

