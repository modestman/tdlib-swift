//
//  CheckAuthenticationPassword.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the authentication password for correctness. Works only when the current authorization state is authorizationStateWaitPassword
public struct CheckAuthenticationPassword: Codable {

    /// The password to check
    public let password: String


    public init (password: String) {
        self.password = password
    }
}

