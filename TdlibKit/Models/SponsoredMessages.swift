//
//  SponsoredMessages.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of sponsored messages
public struct SponsoredMessages: Codable {

    /// List of sponsored messages
    public let messages: [SponsoredMessage]


    public init(messages: [SponsoredMessage]) {
        self.messages = messages
    }
}

