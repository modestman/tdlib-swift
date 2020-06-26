//
//  DeleteSupergroup.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes a supergroup or channel along with all messages in the corresponding chat. This will release the supergroup or channel username and remove all members; requires owner privileges in the supergroup or channel. Chats with more than 1000 members can't be deleted using this method
public struct DeleteSupergroup: Codable {

    /// Identifier of the supergroup or channel
    public let supergroupId: Int


    public init (supergroupId: Int) {
        self.supergroupId = supergroupId
    }
}

