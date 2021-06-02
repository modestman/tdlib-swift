//
//  LanguagePackString.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents one language pack string
public struct LanguagePackString: Codable {

    /// String key
    public let key: String

    /// String value
    public let value: LanguagePackStringValue


    public init(
        key: String,
        value: LanguagePackStringValue
    ) {
        self.key = key
        self.value = value
    }
}

