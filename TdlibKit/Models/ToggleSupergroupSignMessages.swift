//
//  ToggleSupergroupSignMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Toggles sender signatures messages sent in a channel; requires can_change_info administrator right
public struct ToggleSupergroupSignMessages: Codable {

    /// New value of sign_messages
    public let signMessages: Bool?

    /// Identifier of the channel
    public let supergroupId: Int?


    public init(
        signMessages: Bool?,
        supergroupId: Int?
    ) {
        self.signMessages = signMessages
        self.supergroupId = supergroupId
    }
}

