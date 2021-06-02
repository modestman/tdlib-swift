//
//  RecoverAuthenticationPassword.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Recovers the password with a password recovery code sent to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
public struct RecoverAuthenticationPassword: Codable {

    /// Recovery code to check
    public let recoveryCode: String


    public init(recoveryCode: String) {
        self.recoveryCode = recoveryCode
    }
}

