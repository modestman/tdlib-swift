//
//  GetLoginUrl.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline button of type inlineKeyboardButtonTypeLoginUrl. Use the method getLoginUrlInfo to find whether a prior user confirmation is needed. If an error is returned, then the button must be handled as an ordinary URL button
public struct GetLoginUrl: Codable {

    /// True, if the user allowed the bot to send them messages
    public let allowWriteAccess: Bool?

    /// Button identifier
    public let buttonId: Int64?

    /// Chat identifier of the message with the button
    public let chatId: Int64?

    /// Message identifier of the message with the button
    public let messageId: Int64?


    public init(
        allowWriteAccess: Bool?,
        buttonId: Int64?,
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.allowWriteAccess = allowWriteAccess
        self.buttonId = buttonId
        self.chatId = chatId
        self.messageId = messageId
    }
}

