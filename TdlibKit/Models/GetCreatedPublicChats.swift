//
//  GetCreatedPublicChats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a list of public chats of the specified type, owned by the user
public struct GetCreatedPublicChats: Codable {

    /// Type of the public chats to return
    public let type: PublicChatType


    public init (type: PublicChatType) {
        self.type = type
    }
}

