//
//  TextParseMode.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes the way the text should be parsed for TextEntities
public enum TextParseMode: Codable {

    /// The text should be parsed in markdown-style
    case textParseModeMarkdown

    /// The text should be parsed in HTML-style
    case textParseModeHTML


    private enum Kind: String, Codable {
        case textParseModeMarkdown
        case textParseModeHTML
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .textParseModeMarkdown:
            self = .textParseModeMarkdown
        case .textParseModeHTML:
            self = .textParseModeHTML
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .textParseModeMarkdown:
            try container.encode(Kind.textParseModeMarkdown, forKey: .type)
        case .textParseModeHTML:
            try container.encode(Kind.textParseModeHTML, forKey: .type)
        }
    }
}

