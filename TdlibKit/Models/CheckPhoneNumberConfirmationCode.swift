//
//  CheckPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks phone number confirmation code
public struct CheckPhoneNumberConfirmationCode: Codable {

    /// Confirmation code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

