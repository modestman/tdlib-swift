//
//  ReportSupergroupSpam.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Reports some messages from a message sender in a supergroup as spam; requires administrator rights in the supergroup
public struct ReportSupergroupSpam: Codable {

    /// Identifiers of messages sent in the supergroup. All messages must be sent by the same sender. This list must be non-empty
    public let messageIds: [Int64]?

    /// Supergroup identifier
    public let supergroupId: Int64?


    public init(
        messageIds: [Int64]?,
        supergroupId: Int64?
    ) {
        self.messageIds = messageIds
        self.supergroupId = supergroupId
    }
}

