//
//  ChatMembers.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of chat members
public struct ChatMembers: Codable {

    /// A list of chat members
    public let members: [ChatMember]

    /// Approximate total count of chat members found
    public let totalCount: Int


    public init (
        members: [ChatMember],
        totalCount: Int) {

        self.members = members
        self.totalCount = totalCount
    }
}

