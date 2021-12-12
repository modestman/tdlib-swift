//
//  CreateNewBasicGroupChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
public struct CreateNewBasicGroupChat: Codable {

    /// Title of the new basic group; 1-128 characters
    public let title: String?

    /// Identifiers of users to be added to the basic group
    public let userIds: [Int64]?


    public init(
        title: String?,
        userIds: [Int64]?
    ) {
        self.title = title
        self.userIds = userIds
    }
}

