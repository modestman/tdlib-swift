//
//  GetUserPrivacySettingRules.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the current privacy settings
public struct GetUserPrivacySettingRules: Codable {

    /// The privacy setting
    public let setting: UserPrivacySetting


    public init (setting: UserPrivacySetting) {
        self.setting = setting
    }
}

