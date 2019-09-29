//
//  SendPaymentForm.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a filled-out payment form to the bot for final verification
public struct SendPaymentForm: Codable {

    /// Chat identifier of the Invoice message
    public let chatId: Int64

    /// The credentials chosen by user for payment
    public let credentials: InputCredentials

    /// Message identifier
    public let messageId: Int64

    /// Identifier returned by ValidateOrderInfo, or an empty string
    public let orderInfoId: String

    /// Identifier of a chosen shipping option, if applicable
    public let shippingOptionId: String


    public init (
        chatId: Int64,
        credentials: InputCredentials,
        messageId: Int64,
        orderInfoId: String,
        shippingOptionId: String) {

        self.chatId = chatId
        self.credentials = credentials
        self.messageId = messageId
        self.orderInfoId = orderInfoId
        self.shippingOptionId = shippingOptionId
    }
}

