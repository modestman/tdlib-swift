//
//  TextEntities.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of text entities
public struct TextEntities: Codable {

    /// List of text entities
    public let entities: [TextEntity]


    public init(entities: [TextEntity]) {
        self.entities = entities
    }
}

