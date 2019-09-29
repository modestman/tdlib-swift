//
//  ConnectedWebsites.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of websites the current user is logged in with Telegram
public struct ConnectedWebsites: Codable {

    /// List of connected websites
    public let websites: [ConnectedWebsite]


    public init (websites: [ConnectedWebsite]) {
        self.websites = websites
    }
}

