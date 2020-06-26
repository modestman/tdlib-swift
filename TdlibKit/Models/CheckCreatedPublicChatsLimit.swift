//
//  CheckCreatedPublicChatsLimit.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached
public struct CheckCreatedPublicChatsLimit: Codable {

    /// Type of the public chats, for which to check the limit
    public let type: PublicChatType


    public init (type: PublicChatType) {
        self.type = type
    }
}

