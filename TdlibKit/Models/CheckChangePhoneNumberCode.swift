//
//  CheckChangePhoneNumberCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the authentication code sent to confirm a new phone number of the user
public struct CheckChangePhoneNumberCode: Codable {

    /// Authentication code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

