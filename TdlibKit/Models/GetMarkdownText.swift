//
//  GetMarkdownText.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
public struct GetMarkdownText: Codable {

    /// The text
    public let text: FormattedText


    public init (text: FormattedText) {
        self.text = text
    }
}

