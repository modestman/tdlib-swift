//
//  GetChatNotificationSettingsExceptions.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns list of chats with non-default notification settings
public struct GetChatNotificationSettingsExceptions: Codable {

    /// If true, also chats with non-default sound will be returned
    public let compareSound: Bool

    /// If specified, only chats from the specified scope will be returned
    public let scope: NotificationSettingsScope


    public init(
        compareSound: Bool,
        scope: NotificationSettingsScope
    ) {
        self.compareSound = compareSound
        self.scope = scope
    }
}

