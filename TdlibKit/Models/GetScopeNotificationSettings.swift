//
//  GetScopeNotificationSettings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the notification settings for chats of a given type
public struct GetScopeNotificationSettings: Codable {

    /// Types of chats for which to return the notification settings information
    public let scope: NotificationSettingsScope


    public init (scope: NotificationSettingsScope) {
        self.scope = scope
    }
}

