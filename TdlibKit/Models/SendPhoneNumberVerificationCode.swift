//
//  SendPhoneNumberVerificationCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a code to verify a phone number to be added to a user's Telegram Passport
public struct SendPhoneNumberVerificationCode: Codable {

    /// The phone number of the user, in international format
    public let phoneNumber: String

    /// Settings for the authentication of the user's phone number
    public let settings: PhoneNumberAuthenticationSettings


    public init(
        phoneNumber: String,
        settings: PhoneNumberAuthenticationSettings
    ) {
        self.phoneNumber = phoneNumber
        self.settings = settings
    }
}

