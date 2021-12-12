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

    /// String value; pass null if the string needs to be taken from the built-in English language pack
    public let value: LanguagePackStringValue


    public init(
        key: String,
        value: LanguagePackStringValue
    ) {
        self.key = key
        self.value = value
    }
}

