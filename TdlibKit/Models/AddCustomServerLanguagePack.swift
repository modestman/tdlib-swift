//
//  AddCustomServerLanguagePack.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
public struct AddCustomServerLanguagePack: Codable {

    /// Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
    public let languagePackId: String


    public init (languagePackId: String) {
        self.languagePackId = languagePackId
    }
}

