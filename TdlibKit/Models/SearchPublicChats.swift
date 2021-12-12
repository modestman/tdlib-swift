//
//  SearchPublicChats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches public chats by looking for specified query in their username and title. Currently only private chats, supergroups and channels can be public. Returns a meaningful number of results. Excludes private chats with contacts and chats from the chat list from the results
public struct SearchPublicChats: Codable {

    /// Query to search for
    public let query: String?


    public init(query: String?) {
        self.query = query
    }
}

