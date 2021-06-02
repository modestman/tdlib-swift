//
//  GetLanguagePackStrings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization
public struct GetLanguagePackStrings: Codable {

    /// Language pack keys of the strings to be returned; leave empty to request all available strings
    public let keys: [String]

    /// Language pack identifier of the strings to be returned
    public let languagePackId: String


    public init(
        keys: [String],
        languagePackId: String
    ) {
        self.keys = keys
        self.languagePackId = languagePackId
    }
}

