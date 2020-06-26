//
//  ParseMarkdown.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Parses Markdown entities in a human-friendly format, ignoring mark up errors. This is an offline method. Can be called before authorization. Can be called synchronously
public struct ParseMarkdown: Codable {

    /// The text to parse. For example, "__italic__ ~~strikethrough~~ **bold** `code` ```pre``` __[italic__ text_url](telegram.org) __italic**bold italic__bold**"
    public let text: FormattedText


    public init (text: FormattedText) {
        self.text = text
    }
}

