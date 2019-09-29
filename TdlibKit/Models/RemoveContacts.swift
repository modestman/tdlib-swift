//
//  RemoveContacts.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes users from the contact list
public struct RemoveContacts: Codable {

    /// Identifiers of users to be deleted
    public let userIds: [Int]


    public init (userIds: [Int]) {
        self.userIds = userIds
    }
}

