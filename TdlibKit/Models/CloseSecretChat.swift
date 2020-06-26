//
//  CloseSecretChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Closes a secret chat, effectively transferring its state to secretChatStateClosed
public struct CloseSecretChat: Codable {

    /// Secret chat identifier
    public let secretChatId: Int


    public init (secretChatId: Int) {
        self.secretChatId = secretChatId
    }
}

