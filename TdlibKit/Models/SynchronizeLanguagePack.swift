//
//  SynchronizeLanguagePack.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the current used/base language packs. Can be called before authorization
public struct SynchronizeLanguagePack: Codable {

    /// Language pack identifier
    public let languagePackId: String?


    public init(languagePackId: String?) {
        self.languagePackId = languagePackId
    }
}

