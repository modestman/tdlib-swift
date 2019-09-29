//
//  CreateNewSecretChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Creates a new secret chat. Returns the newly created chat
public struct CreateNewSecretChat: Codable {

    /// Identifier of the target user
    public let userId: Int


    public init (userId: Int) {
        self.userId = userId
    }
}

