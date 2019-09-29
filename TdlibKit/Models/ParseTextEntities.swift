//
//  ParseTextEntities.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Parses Bold, Italic, Code, Pre, PreCode and TextUrl entities contained in the text. This is an offline method. Can be called before authorization. Can be called synchronously
public struct ParseTextEntities: Codable {

    /// Text parse mode
    public let parseMode: TextParseMode

    /// The text which should be parsed
    public let text: String


    public init (
        parseMode: TextParseMode,
        text: String) {

        self.parseMode = parseMode
        self.text = text
    }
}

