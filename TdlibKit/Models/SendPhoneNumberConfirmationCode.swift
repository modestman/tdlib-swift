//
//  SendPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends phone number confirmation code. Should be called when user presses "https://t.me/confirmphone?phone=*******&hash=**********" or "tg://confirmphone?phone=*******&hash=**********" link
public struct SendPhoneNumberConfirmationCode: Codable {

    /// Value of the "hash" parameter from the link
    public let hash: String

    /// Value of the "phone" parameter from the link
    public let phoneNumber: String

    /// Settings for the authentication of the user's phone number
    public let settings: PhoneNumberAuthenticationSettings


    public init(
        hash: String,
        phoneNumber: String,
        settings: PhoneNumberAuthenticationSettings
    ) {
        self.hash = hash
        self.phoneNumber = phoneNumber
        self.settings = settings
    }
}

