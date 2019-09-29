//
//  ToggleChatDefaultDisableNotification.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the value of the default disable_notification parameter, used when a message is sent to a chat
public struct ToggleChatDefaultDisableNotification: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of default_disable_notification
    public let defaultDisableNotification: Bool


    public init (
        chatId: Int64,
        defaultDisableNotification: Bool) {

        self.chatId = chatId
        self.defaultDisableNotification = defaultDisableNotification
    }
}

