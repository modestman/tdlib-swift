//
//  CheckEmailAddressVerificationCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the email address verification code for Telegram Passport
public struct CheckEmailAddressVerificationCode: Codable {

    /// Verification code
    public let code: String


    public init (code: String) {
        self.code = code
    }
}

