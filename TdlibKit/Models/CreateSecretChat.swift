//
//  CreateSecretChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an existing chat corresponding to a known secret chat
public struct CreateSecretChat: Codable {

    /// Secret chat identifier
    public let secretChatId: Int


    public init(secretChatId: Int) {
        self.secretChatId = secretChatId
    }
}

