//
//  ChatAdministrator.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a chat administrator
public struct ChatAdministrator: Codable {

    /// Custom title of the administrator
    public let customTitle: String

    /// True, if the user is the owner of the chat
    public let isOwner: Bool

    /// User identifier of the administrator
    public let userId: Int


    public init (
        customTitle: String,
        isOwner: Bool,
        userId: Int) {

        self.customTitle = customTitle
        self.isOwner = isOwner
        self.userId = userId
    }
}

