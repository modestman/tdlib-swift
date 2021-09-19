//
//  SetChatNotificationSettings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
public struct SetChatNotificationSettings: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// New notification settings for the chat. If the chat is muted for more than 1 week, it is considered to be muted forever
    public let notificationSettings: ChatNotificationSettings?


    public init(
        chatId: Int64?,
        notificationSettings: ChatNotificationSettings?
    ) {
        self.chatId = chatId
        self.notificationSettings = notificationSettings
    }
}

