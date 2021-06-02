//
//  EmailAddressAuthenticationCodeInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Information about the email address authentication code that was sent
public struct EmailAddressAuthenticationCodeInfo: Codable {

    /// Pattern of the email address to which an authentication code was sent
    public let emailAddressPattern: String

    /// Length of the code; 0 if unknown
    public let length: Int


    public init(
        emailAddressPattern: String,
        length: Int
    ) {
        self.emailAddressPattern = emailAddressPattern
        self.length = length
    }
}

