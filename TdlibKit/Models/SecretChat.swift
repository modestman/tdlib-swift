//
//  SecretChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a secret chat
public struct SecretChat: Codable {

    /// Secret chat identifier
    public let id: Int

    /// True, if the chat was created by the current user; otherwise false
    public let isOutbound: Bool

    /// Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 bytes, which must be used to make a 12x12 square image with a color depth of 4. The first 16 bytes should be used to make a central 8x8 square, while the remaining 20 bytes should be used to construct a 2-pixel-wide border around that square.//-Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers
    public let keyHash: Data

    /// Secret chat layer; determines features supported by the other client. Video notes are supported if the layer >= 66
    public let layer: Int

    /// State of the secret chat
    public let state: SecretChatState

    /// Current message Time To Live setting (self-destruct timer) for the chat, in seconds
    public let ttl: Int

    /// Identifier of the chat partner
    public let userId: Int


    public init (
        id: Int,
        isOutbound: Bool,
        keyHash: Data,
        layer: Int,
        state: SecretChatState,
        ttl: Int,
        userId: Int) {

        self.id = id
        self.isOutbound = isOutbound
        self.keyHash = keyHash
        self.layer = layer
        self.state = state
        self.ttl = ttl
        self.userId = userId
    }
}

