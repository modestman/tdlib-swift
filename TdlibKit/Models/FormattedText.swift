//
//  FormattedText.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A text with some entities
public struct FormattedText: Codable {

    /// Entities contained in the text
    public let entities: [TextEntity]

    /// The text
    public let text: String


    public init (
        entities: [TextEntity],
        text: String) {

        self.entities = entities
        self.text = text
    }
}

