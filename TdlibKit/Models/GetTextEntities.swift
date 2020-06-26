//
//  GetTextEntities.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. This is an offline method. Can be called before authorization. Can be called synchronously
public struct GetTextEntities: Codable {

    /// The text in which to look for entites
    public let text: String


    public init (text: String) {
        self.text = text
    }
}

