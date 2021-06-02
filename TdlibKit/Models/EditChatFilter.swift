//
//  EditChatFilter.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Edits existing chat filter. Returns information about the edited chat filter
public struct EditChatFilter: Codable {

    /// Chat filter identifier
    public let chatFilterId: Int

    /// The edited chat filter
    public let filter: ChatFilter


    public init(
        chatFilterId: Int,
        filter: ChatFilter
    ) {
        self.chatFilterId = chatFilterId
        self.filter = filter
    }
}

