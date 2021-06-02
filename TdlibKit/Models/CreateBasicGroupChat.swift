//
//  CreateBasicGroupChat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an existing chat corresponding to a known basic group
public struct CreateBasicGroupChat: Codable {

    /// Basic group identifier
    public let basicGroupId: Int

    /// If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
    public let force: Bool


    public init(
        basicGroupId: Int,
        force: Bool
    ) {
        self.basicGroupId = basicGroupId
        self.force = force
    }
}

