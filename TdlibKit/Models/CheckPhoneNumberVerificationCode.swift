//
//  CheckPhoneNumberVerificationCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the phone number verification code for Telegram Passport
public struct CheckPhoneNumberVerificationCode: Codable {

    /// Verification code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

