//
//  SetAutoDownloadSettings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sets auto-download settings
public struct SetAutoDownloadSettings: Codable {

    /// New user auto-download settings
    public let settings: AutoDownloadSettings?

    /// Type of the network for which the new settings are relevant
    public let type: NetworkType?


    public init(
        settings: AutoDownloadSettings?,
        type: NetworkType?
    ) {
        self.settings = settings
        self.type = type
    }
}

