//
//  RecoverPassword.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Recovers the password using a recovery code sent to an email address that was previously set up
public struct RecoverPassword: Codable {

    /// Recovery code to check
    public let recoveryCode: String


    public init (recoveryCode: String) {
        self.recoveryCode = recoveryCode
    }
}

