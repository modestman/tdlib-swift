//
//  DisconnectWebsite.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Disconnects website from the current user's Telegram account
public struct DisconnectWebsite: Codable {

    /// Website identifier
    public let websiteId: TdInt64


    public init (websiteId: TdInt64) {
        self.websiteId = websiteId
    }
}

