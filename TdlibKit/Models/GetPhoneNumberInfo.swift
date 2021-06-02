//
//  GetPhoneNumberInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a phone number by its prefix. Can be called before authorization
public struct GetPhoneNumberInfo: Codable {

    /// The phone number prefix
    public let phoneNumberPrefix: String


    public init(phoneNumberPrefix: String) {
        self.phoneNumberPrefix = phoneNumberPrefix
    }
}

