//
//  RecoverPassword.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Recovers the 2-step verification password using a recovery code sent to an email address that was previously set up
public struct RecoverPassword: Codable {

    /// New password hint; may be empty
    public let newHint: String?

    /// New password of the user; may be empty to remove the password
    public let newPassword: String?

    /// Recovery code to check
    public let recoveryCode: String?


    public init(
        newHint: String?,
        newPassword: String?,
        recoveryCode: String?
    ) {
        self.newHint = newHint
        self.newPassword = newPassword
        self.recoveryCode = recoveryCode
    }
}

