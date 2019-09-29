//
//  SetChatNotificationSettings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the notification settings of a chat
public struct SetChatNotificationSettings: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New notification settings for the chat
    public let notificationSettings: ChatNotificationSettings


    public init (
        chatId: Int64,
        notificationSettings: ChatNotificationSettings) {

        self.chatId = chatId
        self.notificationSettings = notificationSettings
    }
}

