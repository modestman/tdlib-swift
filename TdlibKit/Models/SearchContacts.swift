//
//  SearchContacts.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for the specified query in the first names, last names and usernames of the known user contacts
public struct SearchContacts: Codable {

    /// Maximum number of users to be returned
    public let limit: Int

    /// Query to search for; may be empty to return all contacts
    public let query: String


    public init (
        limit: Int,
        query: String) {

        self.limit = limit
        self.query = query
    }
}

