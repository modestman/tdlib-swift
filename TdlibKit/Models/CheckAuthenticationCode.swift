//
//  CheckAuthenticationCode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode
public struct CheckAuthenticationCode: Codable {

    /// The verification code received via SMS, Telegram message, phone call, or flash call
    public let code: String


    public init(code: String) {
        self.code = code
    }
}

