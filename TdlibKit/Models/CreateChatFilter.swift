//
//  CreateChatFilter.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Creates new chat filter. Returns information about the created chat filter
public struct CreateChatFilter: Codable {

    /// Chat filter
    public let filter: ChatFilter


    public init (filter: ChatFilter) {
        self.filter = filter
    }
}

