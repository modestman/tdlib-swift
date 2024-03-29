//
//  PasswordState.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents the current state of 2-step verification
public struct PasswordState: Codable {

    /// True, if some Telegram Passport elements were saved
    public let hasPassportData: Bool

    /// True, if a 2-step verification password is set
    public let hasPassword: Bool

    /// True, if a recovery email is set
    public let hasRecoveryEmailAddress: Bool

    /// Hint for the password; may be empty
    public let passwordHint: String

    /// If not 0, point in time (Unix timestamp) after which the password can be reset immediately using resetPassword
    public let pendingResetDate: Int

    /// Information about the recovery email address to which the confirmation email was sent; may be null
    public let recoveryEmailAddressCodeInfo: EmailAddressAuthenticationCodeInfo?


    public init(
        hasPassportData: Bool,
        hasPassword: Bool,
        hasRecoveryEmailAddress: Bool,
        passwordHint: String,
        pendingResetDate: Int,
        recoveryEmailAddressCodeInfo: EmailAddressAuthenticationCodeInfo?
    ) {
        self.hasPassportData = hasPassportData
        self.hasPassword = hasPassword
        self.hasRecoveryEmailAddress = hasRecoveryEmailAddress
        self.passwordHint = passwordHint
        self.pendingResetDate = pendingResetDate
        self.recoveryEmailAddressCodeInfo = recoveryEmailAddressCodeInfo
    }
}

