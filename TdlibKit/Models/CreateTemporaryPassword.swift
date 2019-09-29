//
//  CreateTemporaryPassword.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Creates a new temporary password for processing payments
public struct CreateTemporaryPassword: Codable {

    /// Persistent user password
    public let password: String

    /// Time during which the temporary password will be valid, in seconds; should be between 60 and 86400
    public let validFor: Int


    public init (
        password: String,
        validFor: Int) {

        self.password = password
        self.validFor = validFor
    }
}

