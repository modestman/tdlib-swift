//
//  CreateSupergroupChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an existing chat corresponding to a known supergroup or channel
public struct CreateSupergroupChat: Codable {

    /// If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
    public let force: Bool

    /// Supergroup or channel identifier
    public let supergroupId: Int


    public init (
        force: Bool,
        supergroupId: Int) {

        self.force = force
        self.supergroupId = supergroupId
    }
}

