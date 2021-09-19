//
//  ClearAllDraftMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Clears draft messages in all chats
public struct ClearAllDraftMessages: Codable {

    /// If true, local draft messages in secret chats will not be cleared
    public let excludeSecretChats: Bool?


    public init(excludeSecretChats: Bool?) {
        self.excludeSecretChats = excludeSecretChats
    }
}

