//
//  CheckAuthenticationBotToken.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in
public struct CheckAuthenticationBotToken: Codable {

    /// The bot token
    public let token: String


    public init (token: String) {
        self.token = token
    }
}

