//
//  CheckRecoveryEmailAddressCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the 2-step verification recovery email address verification code
public struct CheckRecoveryEmailAddressCode: Codable {

    /// Verification code
    public let code: String


    public init (code: String) {
        self.code = code
    }
}

