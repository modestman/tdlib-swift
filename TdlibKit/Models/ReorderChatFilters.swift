//
//  ReorderChatFilters.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the order of chat filters
public struct ReorderChatFilters: Codable {

    /// Identifiers of chat filters in the new correct order
    public let chatFilterIds: [Int]?


    public init(chatFilterIds: [Int]?) {
        self.chatFilterIds = chatFilterIds
    }
}

