//
//  SendEmailAddressVerificationCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a code to verify an email address to be added to a user's Telegram Passport
public struct SendEmailAddressVerificationCode: Codable {

    /// Email address
    public let emailAddress: String


    public init (emailAddress: String) {
        self.emailAddress = emailAddress
    }
}

