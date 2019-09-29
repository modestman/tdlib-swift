//
//  LocalizationTargetInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about the current localization target
public struct LocalizationTargetInfo: Codable {

    /// List of available language packs for this application
    public let languagePacks: [LanguagePackInfo]


    public init (languagePacks: [LanguagePackInfo]) {
        self.languagePacks = languagePacks
    }
}

