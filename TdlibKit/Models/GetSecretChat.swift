//
//  GetSecretChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a secret chat by its identifier. This is an offline request
public struct GetSecretChat: Codable {

    /// Secret chat identifier
    public let secretChatId: Int


    public init (secretChatId: Int) {
        self.secretChatId = secretChatId
    }
}

