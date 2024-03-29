//
//  ValidateOrderInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
public struct ValidateOrderInfo: Codable {

    /// True, if the order information can be saved
    public let allowSave: Bool?

    /// Chat identifier of the Invoice message
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?

    /// The order information, provided by the user; pass null if empty
    public let orderInfo: OrderInfo?


    public init(
        allowSave: Bool?,
        chatId: Int64?,
        messageId: Int64?,
        orderInfo: OrderInfo?
    ) {
        self.allowSave = allowSave
        self.chatId = chatId
        self.messageId = messageId
        self.orderInfo = orderInfo
    }
}

