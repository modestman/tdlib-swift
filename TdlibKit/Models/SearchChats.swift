//
//  SearchChats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the chat list
public struct SearchChats: Codable {

    /// Maximum number of chats to be returned
    public let limit: Int

    /// Query to search for. If the query is empty, returns up to 20 recently found chats
    public let query: String


    public init (
        limit: Int,
        query: String) {

        self.limit = limit
        self.query = query
    }
}

