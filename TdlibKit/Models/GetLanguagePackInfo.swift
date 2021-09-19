//
//  GetLanguagePackInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization
public struct GetLanguagePackInfo: Codable {

    /// Language pack identifier
    public let languagePackId: String?


    public init(languagePackId: String?) {
        self.languagePackId = languagePackId
    }
}

